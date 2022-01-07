
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {struct inode* ns_cpfile; } ;
struct nilfs_period {int p_end; int p_start; } ;
struct nilfs_argv {size_t v_nmembs; } ;
struct inode {int dummy; } ;


 int nilfs_cpfile_delete_checkpoints (struct inode*,int ,int ) ;

__attribute__((used)) static int nilfs_ioctl_delete_checkpoints(struct the_nilfs *nilfs,
       struct nilfs_argv *argv, void *buf)
{
 size_t nmembs = argv->v_nmembs;
 struct inode *cpfile = nilfs->ns_cpfile;
 struct nilfs_period *periods = buf;
 int ret, i;

 for (i = 0; i < nmembs; i++) {
  ret = nilfs_cpfile_delete_checkpoints(
   cpfile, periods[i].p_start, periods[i].p_end);
  if (ret < 0)
   return ret;
 }
 return nmembs;
}
