
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {size_t s_blocksize; size_t s_blocksize_bits; } ;
struct ocfs2_mem_dqinfo {int dqi_gqi_bh; struct inode* dqi_gqinode; } ;
struct mem_dqinfo {struct ocfs2_mem_dqinfo* dqi_priv; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_page; scalar_t__ b_data; } ;
typedef int ssize_t ;
typedef size_t sector_t ;
typedef size_t loff_t ;
typedef int handle_t ;


 int EIO ;
 int ENOMEM ;
 int INODE_CACHE (struct inode*) ;
 int ML_ERROR ;
 int OCFS2_JOURNAL_ACCESS_CREATE ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int OCFS2_QBLK_RESERVED_SPACE ;
 int WARN_ON (int) ;
 int brelse (struct buffer_head*) ;
 int flush_dcache_page (int ) ;
 size_t i_size_read (struct inode*) ;
 int inode_inc_iversion (struct inode*) ;
 int * journal_current_handle () ;
 int lock_buffer (struct buffer_head*) ;
 int memcpy (scalar_t__,char const*,size_t) ;
 int memset (scalar_t__,int ,size_t) ;
 int mlog (int ,char*,unsigned long long,unsigned long long) ;
 int mlog_errno (int) ;
 size_t ocfs2_align_bytes_to_blocks (struct super_block*,size_t) ;
 int ocfs2_extent_map_get_blocks (struct inode*,size_t,int *,int *,int *) ;
 int ocfs2_journal_access_dq (int *,int ,struct buffer_head*,int) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_mark_inode_dirty (int *,struct inode*,int ) ;
 int ocfs2_read_quota_phys_block (struct inode*,int ,struct buffer_head**) ;
 int ocfs2_set_buffer_uptodate (int ,struct buffer_head*) ;
 int ocfs2_simple_size_update (struct inode*,int ,size_t) ;
 struct mem_dqinfo* sb_dqinfo (struct super_block*,int) ;
 struct buffer_head* sb_getblk (struct super_block*,int ) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

ssize_t ocfs2_quota_write(struct super_block *sb, int type,
     const char *data, size_t len, loff_t off)
{
 struct mem_dqinfo *info = sb_dqinfo(sb, type);
 struct ocfs2_mem_dqinfo *oinfo = info->dqi_priv;
 struct inode *gqinode = oinfo->dqi_gqinode;
 int offset = off & (sb->s_blocksize - 1);
 sector_t blk = off >> sb->s_blocksize_bits;
 int err = 0, new = 0, ja_type;
 struct buffer_head *bh = ((void*)0);
 handle_t *handle = journal_current_handle();
 u64 pblock, pcount;

 if (!handle) {
  mlog(ML_ERROR, "Quota write (off=%llu, len=%llu) cancelled "
       "because transaction was not started.\n",
       (unsigned long long)off, (unsigned long long)len);
  return -EIO;
 }
 if (len > sb->s_blocksize - OCFS2_QBLK_RESERVED_SPACE - offset) {
  WARN_ON(1);
  len = sb->s_blocksize - OCFS2_QBLK_RESERVED_SPACE - offset;
 }

 if (i_size_read(gqinode) < off + len) {
  loff_t rounded_end =
    ocfs2_align_bytes_to_blocks(sb, off + len);


  err = ocfs2_simple_size_update(gqinode,
            oinfo->dqi_gqi_bh,
            rounded_end);
  if (err < 0)
   goto out;
  new = 1;
 }
 err = ocfs2_extent_map_get_blocks(gqinode, blk, &pblock, &pcount, ((void*)0));
 if (err) {
  mlog_errno(err);
  goto out;
 }

 if ((offset || len < sb->s_blocksize - OCFS2_QBLK_RESERVED_SPACE) &&
     !new) {
  err = ocfs2_read_quota_phys_block(gqinode, pblock, &bh);
  ja_type = OCFS2_JOURNAL_ACCESS_WRITE;
 } else {
  bh = sb_getblk(sb, pblock);
  if (!bh)
   err = -ENOMEM;
  ja_type = OCFS2_JOURNAL_ACCESS_CREATE;
 }
 if (err) {
  mlog_errno(err);
  goto out;
 }
 lock_buffer(bh);
 if (new)
  memset(bh->b_data, 0, sb->s_blocksize);
 memcpy(bh->b_data + offset, data, len);
 flush_dcache_page(bh->b_page);
 set_buffer_uptodate(bh);
 unlock_buffer(bh);
 ocfs2_set_buffer_uptodate(INODE_CACHE(gqinode), bh);
 err = ocfs2_journal_access_dq(handle, INODE_CACHE(gqinode), bh,
          ja_type);
 if (err < 0) {
  brelse(bh);
  goto out;
 }
 ocfs2_journal_dirty(handle, bh);
 brelse(bh);
out:
 if (err) {
  mlog_errno(err);
  return err;
 }
 inode_inc_iversion(gqinode);
 ocfs2_mark_inode_dirty(handle, gqinode, oinfo->dqi_gqi_bh);
 return len;
}
