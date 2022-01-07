
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_cpfile_header {int ch_ncheckpoints; } ;
struct nilfs_checkpoint {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_page; } ;
typedef int __u64 ;
struct TYPE_2__ {int mi_sem; } ;


 int EINVAL ;
 int ENOENT ;
 TYPE_1__* NILFS_MDT (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int down_write (int *) ;
 void* kmap (int ) ;
 void* kmap_atomic (int ) ;
 int kunmap (int ) ;
 int kunmap_atomic (void*) ;
 int le64_add_cpu (int *,int) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int nilfs_checkpoint_clear_invalid (struct nilfs_checkpoint*) ;
 scalar_t__ nilfs_checkpoint_invalid (struct nilfs_checkpoint*) ;
 int nilfs_cpfile_block_add_valid_checkpoints (struct inode*,struct buffer_head*,void*,int) ;
 struct nilfs_checkpoint* nilfs_cpfile_block_get_checkpoint (struct inode*,int,struct buffer_head*,void*) ;
 struct nilfs_cpfile_header* nilfs_cpfile_block_get_header (struct inode*,struct buffer_head*,void*) ;
 int nilfs_cpfile_get_checkpoint_block (struct inode*,int,int,struct buffer_head**) ;
 int nilfs_cpfile_get_header_block (struct inode*,struct buffer_head**) ;
 int nilfs_cpfile_is_in_first (struct inode*,int) ;
 int nilfs_mdt_cno (struct inode*) ;
 int nilfs_mdt_mark_dirty (struct inode*) ;
 scalar_t__ unlikely (int) ;
 int up_write (int *) ;

int nilfs_cpfile_get_checkpoint(struct inode *cpfile,
    __u64 cno,
    int create,
    struct nilfs_checkpoint **cpp,
    struct buffer_head **bhp)
{
 struct buffer_head *header_bh, *cp_bh;
 struct nilfs_cpfile_header *header;
 struct nilfs_checkpoint *cp;
 void *kaddr;
 int ret;

 if (unlikely(cno < 1 || cno > nilfs_mdt_cno(cpfile) ||
       (cno < nilfs_mdt_cno(cpfile) && create)))
  return -EINVAL;

 down_write(&NILFS_MDT(cpfile)->mi_sem);

 ret = nilfs_cpfile_get_header_block(cpfile, &header_bh);
 if (ret < 0)
  goto out_sem;
 ret = nilfs_cpfile_get_checkpoint_block(cpfile, cno, create, &cp_bh);
 if (ret < 0)
  goto out_header;
 kaddr = kmap(cp_bh->b_page);
 cp = nilfs_cpfile_block_get_checkpoint(cpfile, cno, cp_bh, kaddr);
 if (nilfs_checkpoint_invalid(cp)) {
  if (!create) {
   kunmap(cp_bh->b_page);
   brelse(cp_bh);
   ret = -ENOENT;
   goto out_header;
  }

  nilfs_checkpoint_clear_invalid(cp);
  if (!nilfs_cpfile_is_in_first(cpfile, cno))
   nilfs_cpfile_block_add_valid_checkpoints(cpfile, cp_bh,
         kaddr, 1);
  mark_buffer_dirty(cp_bh);

  kaddr = kmap_atomic(header_bh->b_page);
  header = nilfs_cpfile_block_get_header(cpfile, header_bh,
             kaddr);
  le64_add_cpu(&header->ch_ncheckpoints, 1);
  kunmap_atomic(kaddr);
  mark_buffer_dirty(header_bh);
  nilfs_mdt_mark_dirty(cpfile);
 }

 if (cpp != ((void*)0))
  *cpp = cp;
 *bhp = cp_bh;

 out_header:
 brelse(header_bh);

 out_sem:
 up_write(&NILFS_MDT(cpfile)->mi_sem);
 return ret;
}
