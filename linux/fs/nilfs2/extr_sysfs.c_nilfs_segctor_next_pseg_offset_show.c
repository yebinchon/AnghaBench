
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {unsigned long ns_pseg_offset; int ns_segctor_sem; } ;
struct nilfs_segctor_attr {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int down_read (int *) ;
 int snprintf (char*,int ,char*,unsigned long) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t
nilfs_segctor_next_pseg_offset_show(struct nilfs_segctor_attr *attr,
     struct the_nilfs *nilfs,
     char *buf)
{
 unsigned long pseg_offset;

 down_read(&nilfs->ns_segctor_sem);
 pseg_offset = nilfs->ns_pseg_offset;
 up_read(&nilfs->ns_segctor_sem);

 return snprintf(buf, PAGE_SIZE, "%lu\n", pseg_offset);
}
