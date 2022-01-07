
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct the_nilfs {int ns_sem; int ns_sbwtime; } ;
struct nilfs_superblock_attr {int dummy; } ;
typedef int ssize_t ;


 int NILFS_SHOW_TIME (int ,char*) ;
 int down_read (int *) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t
nilfs_superblock_sb_write_time_show(struct nilfs_superblock_attr *attr,
         struct the_nilfs *nilfs,
         char *buf)
{
 time64_t sbwtime;

 down_read(&nilfs->ns_sem);
 sbwtime = nilfs->ns_sbwtime;
 up_read(&nilfs->ns_sem);

 return NILFS_SHOW_TIME(sbwtime, buf);
}
