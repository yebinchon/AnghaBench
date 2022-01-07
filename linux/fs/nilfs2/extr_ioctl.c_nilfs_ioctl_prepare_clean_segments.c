
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_sb; } ;
struct nilfs_argv {int dummy; } ;


 int KERN_ERR ;
 int nilfs_ioctl_delete_checkpoints (struct the_nilfs*,struct nilfs_argv*,void*) ;
 int nilfs_ioctl_free_vblocknrs (struct the_nilfs*,struct nilfs_argv*,void*) ;
 int nilfs_ioctl_mark_blocks_dirty (struct the_nilfs*,struct nilfs_argv*,void*) ;
 int nilfs_msg (int ,int ,char*,int,char const*) ;

int nilfs_ioctl_prepare_clean_segments(struct the_nilfs *nilfs,
           struct nilfs_argv *argv, void **kbufs)
{
 const char *msg;
 int ret;

 ret = nilfs_ioctl_delete_checkpoints(nilfs, &argv[1], kbufs[1]);
 if (ret < 0) {




  msg = "cannot delete checkpoints";
  goto failed;
 }
 ret = nilfs_ioctl_free_vblocknrs(nilfs, &argv[2], kbufs[2]);
 if (ret < 0) {




  msg = "cannot delete virtual blocks from DAT file";
  goto failed;
 }
 ret = nilfs_ioctl_mark_blocks_dirty(nilfs, &argv[3], kbufs[3]);
 if (ret < 0) {



  msg = "cannot mark copying blocks dirty";
  goto failed;
 }
 return 0;

 failed:
 nilfs_msg(nilfs->ns_sb, KERN_ERR, "error %d preparing GC: %s", ret,
    msg);
 return ret;
}
