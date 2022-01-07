
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_sb; int ns_segctor_sem; int ns_cpfile; } ;
struct nilfs_cpstat {int cs_nsss; } ;
struct nilfs_checkpoints_attr {int dummy; } ;
typedef int ssize_t ;
typedef int __u64 ;


 int KERN_ERR ;
 int PAGE_SIZE ;
 int down_read (int *) ;
 int nilfs_cpfile_get_stat (int ,struct nilfs_cpstat*) ;
 int nilfs_msg (int ,int ,char*,int) ;
 int snprintf (char*,int ,char*,int ) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t
nilfs_checkpoints_snapshots_number_show(struct nilfs_checkpoints_attr *attr,
     struct the_nilfs *nilfs,
     char *buf)
{
 __u64 nsnapshots;
 struct nilfs_cpstat cpstat;
 int err;

 down_read(&nilfs->ns_segctor_sem);
 err = nilfs_cpfile_get_stat(nilfs->ns_cpfile, &cpstat);
 up_read(&nilfs->ns_segctor_sem);
 if (err < 0) {
  nilfs_msg(nilfs->ns_sb, KERN_ERR,
     "unable to get checkpoint stat: err=%d", err);
  return err;
 }

 nsnapshots = cpstat.cs_nsss;

 return snprintf(buf, PAGE_SIZE, "%llu\n", nsnapshots);
}
