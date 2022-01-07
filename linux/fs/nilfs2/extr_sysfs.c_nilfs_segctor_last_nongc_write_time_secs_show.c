
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct the_nilfs {int ns_segctor_sem; int ns_nongc_ctime; } ;
struct nilfs_segctor_attr {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int down_read (int *) ;
 int snprintf (char*,int ,char*,int ) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t
nilfs_segctor_last_nongc_write_time_secs_show(struct nilfs_segctor_attr *attr,
      struct the_nilfs *nilfs,
      char *buf)
{
 time64_t nongc_ctime;

 down_read(&nilfs->ns_segctor_sem);
 nongc_ctime = nilfs->ns_nongc_ctime;
 up_read(&nilfs->ns_segctor_sem);

 return snprintf(buf, PAGE_SIZE, "%llu\n", nongc_ctime);
}
