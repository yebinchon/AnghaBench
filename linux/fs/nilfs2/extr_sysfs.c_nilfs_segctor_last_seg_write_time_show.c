
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct the_nilfs {int ns_segctor_sem; int ns_ctime; } ;
struct nilfs_segctor_attr {int dummy; } ;
typedef int ssize_t ;


 int NILFS_SHOW_TIME (int ,char*) ;
 int down_read (int *) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t
nilfs_segctor_last_seg_write_time_show(struct nilfs_segctor_attr *attr,
     struct the_nilfs *nilfs,
     char *buf)
{
 time64_t ctime;

 down_read(&nilfs->ns_segctor_sem);
 ctime = nilfs->ns_ctime;
 up_read(&nilfs->ns_segctor_sem);

 return NILFS_SHOW_TIME(ctime, buf);
}
