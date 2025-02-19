
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct nilfs_cpfile_header {int ch_ncheckpoints; } ;
struct nilfs_checkpoint {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {int b_page; } ;
typedef scalar_t__ __u64 ;
struct TYPE_2__ {size_t mi_entry_size; int mi_sem; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOENT ;
 int KERN_ERR ;
 TYPE_1__* NILFS_MDT (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int down_write (int *) ;
 void* kmap_atomic (int ) ;
 int kunmap_atomic (void*) ;
 int le64_add_cpu (int *,int ) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int nilfs_checkpoint_invalid (struct nilfs_checkpoint*) ;
 int nilfs_checkpoint_set_invalid (struct nilfs_checkpoint*) ;
 scalar_t__ nilfs_checkpoint_snapshot (struct nilfs_checkpoint*) ;
 struct nilfs_checkpoint* nilfs_cpfile_block_get_checkpoint (struct inode*,scalar_t__,struct buffer_head*,void*) ;
 struct nilfs_cpfile_header* nilfs_cpfile_block_get_header (struct inode*,struct buffer_head*,void*) ;
 int nilfs_cpfile_block_sub_valid_checkpoints (struct inode*,struct buffer_head*,void*,int) ;
 int nilfs_cpfile_checkpoints_in_block (struct inode*,scalar_t__,scalar_t__) ;
 int nilfs_cpfile_delete_checkpoint_block (struct inode*,scalar_t__) ;
 int nilfs_cpfile_get_checkpoint_block (struct inode*,scalar_t__,int ,struct buffer_head**) ;
 int nilfs_cpfile_get_header_block (struct inode*,struct buffer_head**) ;
 int nilfs_cpfile_is_in_first (struct inode*,scalar_t__) ;
 int nilfs_mdt_mark_dirty (struct inode*) ;
 int nilfs_msg (int ,int ,char*,int,...) ;
 scalar_t__ unlikely (int) ;
 int up_write (int *) ;

int nilfs_cpfile_delete_checkpoints(struct inode *cpfile,
        __u64 start,
        __u64 end)
{
 struct buffer_head *header_bh, *cp_bh;
 struct nilfs_cpfile_header *header;
 struct nilfs_checkpoint *cp;
 size_t cpsz = NILFS_MDT(cpfile)->mi_entry_size;
 __u64 cno;
 void *kaddr;
 unsigned long tnicps;
 int ret, ncps, nicps, nss, count, i;

 if (unlikely(start == 0 || start > end)) {
  nilfs_msg(cpfile->i_sb, KERN_ERR,
     "cannot delete checkpoints: invalid range [%llu, %llu)",
     (unsigned long long)start, (unsigned long long)end);
  return -EINVAL;
 }

 down_write(&NILFS_MDT(cpfile)->mi_sem);

 ret = nilfs_cpfile_get_header_block(cpfile, &header_bh);
 if (ret < 0)
  goto out_sem;
 tnicps = 0;
 nss = 0;

 for (cno = start; cno < end; cno += ncps) {
  ncps = nilfs_cpfile_checkpoints_in_block(cpfile, cno, end);
  ret = nilfs_cpfile_get_checkpoint_block(cpfile, cno, 0, &cp_bh);
  if (ret < 0) {
   if (ret != -ENOENT)
    break;

   ret = 0;
   continue;
  }

  kaddr = kmap_atomic(cp_bh->b_page);
  cp = nilfs_cpfile_block_get_checkpoint(
   cpfile, cno, cp_bh, kaddr);
  nicps = 0;
  for (i = 0; i < ncps; i++, cp = (void *)cp + cpsz) {
   if (nilfs_checkpoint_snapshot(cp)) {
    nss++;
   } else if (!nilfs_checkpoint_invalid(cp)) {
    nilfs_checkpoint_set_invalid(cp);
    nicps++;
   }
  }
  if (nicps > 0) {
   tnicps += nicps;
   mark_buffer_dirty(cp_bh);
   nilfs_mdt_mark_dirty(cpfile);
   if (!nilfs_cpfile_is_in_first(cpfile, cno)) {
    count =
      nilfs_cpfile_block_sub_valid_checkpoints(
      cpfile, cp_bh, kaddr, nicps);
    if (count == 0) {

     kunmap_atomic(kaddr);
     brelse(cp_bh);
     ret =
       nilfs_cpfile_delete_checkpoint_block(
           cpfile, cno);
     if (ret == 0)
      continue;
     nilfs_msg(cpfile->i_sb, KERN_ERR,
        "error %d deleting checkpoint block",
        ret);
     break;
    }
   }
  }

  kunmap_atomic(kaddr);
  brelse(cp_bh);
 }

 if (tnicps > 0) {
  kaddr = kmap_atomic(header_bh->b_page);
  header = nilfs_cpfile_block_get_header(cpfile, header_bh,
             kaddr);
  le64_add_cpu(&header->ch_ncheckpoints, -(u64)tnicps);
  mark_buffer_dirty(header_bh);
  nilfs_mdt_mark_dirty(cpfile);
  kunmap_atomic(kaddr);
 }

 brelse(header_bh);
 if (nss > 0)
  ret = -EBUSY;

 out_sem:
 up_write(&NILFS_MDT(cpfile)->mi_sem);
 return ret;
}
