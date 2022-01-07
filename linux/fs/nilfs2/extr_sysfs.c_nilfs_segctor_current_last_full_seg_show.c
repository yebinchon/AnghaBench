
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_segctor_sem; int ns_segnum; } ;
struct nilfs_segctor_attr {int dummy; } ;
typedef int ssize_t ;
typedef int __u64 ;


 int PAGE_SIZE ;
 int down_read (int *) ;
 int snprintf (char*,int ,char*,int ) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t
nilfs_segctor_current_last_full_seg_show(struct nilfs_segctor_attr *attr,
      struct the_nilfs *nilfs,
      char *buf)
{
 __u64 segnum;

 down_read(&nilfs->ns_segctor_sem);
 segnum = nilfs->ns_segnum;
 up_read(&nilfs->ns_segctor_sem);

 return snprintf(buf, PAGE_SIZE, "%llu\n", segnum);
}
