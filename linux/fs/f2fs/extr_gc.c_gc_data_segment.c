
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct page {int i_mode; } ;
struct node_info {int ino; } ;
struct inode {int i_mode; } ;
struct gc_inode_list {int dummy; } ;
struct f2fs_summary {int ofs_in_node; int nid; } ;
struct f2fs_sb_info {int blocks_per_seg; int skipped_gc_rwsem; struct super_block* sb; } ;
struct f2fs_inode_info {int * i_gc_rwsem; } ;
typedef int nid_t ;
typedef scalar_t__ block_t ;


 int BG_GC ;
 struct f2fs_inode_info* F2FS_I (struct page*) ;
 int FG_GC ;
 scalar_t__ IS_ERR (struct page*) ;
 int META_NAT ;
 int NAT_BLOCK_OFFSET (int ) ;
 size_t READ ;
 int REQ_RAHEAD ;
 scalar_t__ START_BLOCK (struct f2fs_sb_info*,unsigned int) ;
 scalar_t__ S_ISREG (int ) ;
 size_t WRITE ;
 int add_gc_inode (struct gc_inode_list*,struct page*) ;
 scalar_t__ check_valid_map (struct f2fs_sb_info*,unsigned int,int) ;
 int down_write_trylock (int *) ;
 struct page* f2fs_get_read_data_page (struct page*,scalar_t__,int ,int) ;
 struct page* f2fs_iget (struct super_block*,int ) ;
 scalar_t__ f2fs_post_read_required (struct page*) ;
 int f2fs_put_page (struct page*,int ) ;
 int f2fs_ra_meta_pages (struct f2fs_sb_info*,int ,int,int ,int) ;
 int f2fs_ra_node_page (struct f2fs_sb_info*,int ) ;
 scalar_t__ f2fs_start_bidx_of_node (unsigned int,struct page*) ;
 struct page* find_gc_inode (struct gc_inode_list*,int ) ;
 scalar_t__ has_not_enough_free_secs (struct f2fs_sb_info*,int ,int ) ;
 int inode_dio_wait (struct page*) ;
 int iput (struct page*) ;
 int is_alive (struct f2fs_sb_info*,struct f2fs_summary*,struct node_info*,scalar_t__,unsigned int*) ;
 scalar_t__ is_bad_inode (struct page*) ;
 unsigned int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int move_data_block (struct page*,scalar_t__,int,unsigned int,int) ;
 int move_data_page (struct page*,scalar_t__,int,unsigned int,int) ;
 int ra_data_block (struct page*,scalar_t__) ;
 int stat_inc_data_blk_count (struct f2fs_sb_info*,int,int) ;
 int up_write (int *) ;

__attribute__((used)) static int gc_data_segment(struct f2fs_sb_info *sbi, struct f2fs_summary *sum,
  struct gc_inode_list *gc_list, unsigned int segno, int gc_type)
{
 struct super_block *sb = sbi->sb;
 struct f2fs_summary *entry;
 block_t start_addr;
 int off;
 int phase = 0;
 int submitted = 0;

 start_addr = START_BLOCK(sbi, segno);

next_step:
 entry = sum;

 for (off = 0; off < sbi->blocks_per_seg; off++, entry++) {
  struct page *data_page;
  struct inode *inode;
  struct node_info dni;
  unsigned int ofs_in_node, nofs;
  block_t start_bidx;
  nid_t nid = le32_to_cpu(entry->nid);


  if (gc_type == BG_GC && has_not_enough_free_secs(sbi, 0, 0))
   return submitted;

  if (check_valid_map(sbi, segno, off) == 0)
   continue;

  if (phase == 0) {
   f2fs_ra_meta_pages(sbi, NAT_BLOCK_OFFSET(nid), 1,
       META_NAT, 1);
   continue;
  }

  if (phase == 1) {
   f2fs_ra_node_page(sbi, nid);
   continue;
  }


  if (!is_alive(sbi, entry, &dni, start_addr + off, &nofs))
   continue;

  if (phase == 2) {
   f2fs_ra_node_page(sbi, dni.ino);
   continue;
  }

  ofs_in_node = le16_to_cpu(entry->ofs_in_node);

  if (phase == 3) {
   inode = f2fs_iget(sb, dni.ino);
   if (IS_ERR(inode) || is_bad_inode(inode))
    continue;

   if (!down_write_trylock(
    &F2FS_I(inode)->i_gc_rwsem[WRITE])) {
    iput(inode);
    sbi->skipped_gc_rwsem++;
    continue;
   }

   start_bidx = f2fs_start_bidx_of_node(nofs, inode) +
        ofs_in_node;

   if (f2fs_post_read_required(inode)) {
    int err = ra_data_block(inode, start_bidx);

    up_write(&F2FS_I(inode)->i_gc_rwsem[WRITE]);
    if (err) {
     iput(inode);
     continue;
    }
    add_gc_inode(gc_list, inode);
    continue;
   }

   data_page = f2fs_get_read_data_page(inode,
      start_bidx, REQ_RAHEAD, 1);
   up_write(&F2FS_I(inode)->i_gc_rwsem[WRITE]);
   if (IS_ERR(data_page)) {
    iput(inode);
    continue;
   }

   f2fs_put_page(data_page, 0);
   add_gc_inode(gc_list, inode);
   continue;
  }


  inode = find_gc_inode(gc_list, dni.ino);
  if (inode) {
   struct f2fs_inode_info *fi = F2FS_I(inode);
   bool locked = 0;
   int err;

   if (S_ISREG(inode->i_mode)) {
    if (!down_write_trylock(&fi->i_gc_rwsem[READ]))
     continue;
    if (!down_write_trylock(
      &fi->i_gc_rwsem[WRITE])) {
     sbi->skipped_gc_rwsem++;
     up_write(&fi->i_gc_rwsem[READ]);
     continue;
    }
    locked = 1;


    inode_dio_wait(inode);
   }

   start_bidx = f2fs_start_bidx_of_node(nofs, inode)
        + ofs_in_node;
   if (f2fs_post_read_required(inode))
    err = move_data_block(inode, start_bidx,
       gc_type, segno, off);
   else
    err = move_data_page(inode, start_bidx, gc_type,
        segno, off);

   if (!err && (gc_type == FG_GC ||
     f2fs_post_read_required(inode)))
    submitted++;

   if (locked) {
    up_write(&fi->i_gc_rwsem[WRITE]);
    up_write(&fi->i_gc_rwsem[READ]);
   }

   stat_inc_data_blk_count(sbi, 1, gc_type);
  }
 }

 if (++phase < 5)
  goto next_step;

 return submitted;
}
