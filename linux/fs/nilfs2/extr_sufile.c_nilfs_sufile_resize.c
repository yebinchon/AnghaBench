
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct the_nilfs {int dummy; } ;
struct nilfs_sufile_info {unsigned long ncleansegs; } ;
struct nilfs_sufile_header {int sh_ncleansegs; } ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {int b_page; } ;
typedef unsigned long __u64 ;
struct TYPE_4__ {int mi_sem; } ;
struct TYPE_3__ {struct the_nilfs* s_fs_info; } ;


 int ENOSPC ;
 TYPE_2__* NILFS_MDT (struct inode*) ;
 struct nilfs_sufile_info* NILFS_SUI (struct inode*) ;
 int bh_offset (struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le64 (unsigned long) ;
 int down_write (int *) ;
 void* kmap_atomic (int ) ;
 int kunmap_atomic (void*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int nilfs_mdt_mark_dirty (struct inode*) ;
 unsigned long nilfs_nrsvsegs (struct the_nilfs*,unsigned long) ;
 int nilfs_set_nsegments (struct the_nilfs*,unsigned long) ;
 int nilfs_sufile_get_header_block (struct inode*,struct buffer_head**) ;
 unsigned long nilfs_sufile_get_nsegments (struct inode*) ;
 int nilfs_sufile_truncate_range (struct inode*,unsigned long,unsigned long) ;
 int up_write (int *) ;

int nilfs_sufile_resize(struct inode *sufile, __u64 newnsegs)
{
 struct the_nilfs *nilfs = sufile->i_sb->s_fs_info;
 struct buffer_head *header_bh;
 struct nilfs_sufile_header *header;
 struct nilfs_sufile_info *sui = NILFS_SUI(sufile);
 void *kaddr;
 unsigned long nsegs, nrsvsegs;
 int ret = 0;

 down_write(&NILFS_MDT(sufile)->mi_sem);

 nsegs = nilfs_sufile_get_nsegments(sufile);
 if (nsegs == newnsegs)
  goto out;

 ret = -ENOSPC;
 nrsvsegs = nilfs_nrsvsegs(nilfs, newnsegs);
 if (newnsegs < nsegs && nsegs - newnsegs + nrsvsegs > sui->ncleansegs)
  goto out;

 ret = nilfs_sufile_get_header_block(sufile, &header_bh);
 if (ret < 0)
  goto out;

 if (newnsegs > nsegs) {
  sui->ncleansegs += newnsegs - nsegs;
 } else {
  ret = nilfs_sufile_truncate_range(sufile, newnsegs, nsegs - 1);
  if (ret < 0)
   goto out_header;

  sui->ncleansegs -= nsegs - newnsegs;
 }

 kaddr = kmap_atomic(header_bh->b_page);
 header = kaddr + bh_offset(header_bh);
 header->sh_ncleansegs = cpu_to_le64(sui->ncleansegs);
 kunmap_atomic(kaddr);

 mark_buffer_dirty(header_bh);
 nilfs_mdt_mark_dirty(sufile);
 nilfs_set_nsegments(nilfs, newnsegs);

out_header:
 brelse(header_bh);
out:
 up_write(&NILFS_MDT(sufile)->mi_sem);
 return ret;
}
