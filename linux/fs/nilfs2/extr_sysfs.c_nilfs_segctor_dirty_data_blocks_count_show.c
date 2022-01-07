
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct the_nilfs {int ns_segctor_sem; int ns_ndirtyblks; } ;
struct nilfs_segctor_attr {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int atomic_read (int *) ;
 int down_read (int *) ;
 int snprintf (char*,int ,char*,int) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t
nilfs_segctor_dirty_data_blocks_count_show(struct nilfs_segctor_attr *attr,
         struct the_nilfs *nilfs,
         char *buf)
{
 u32 ndirtyblks;

 down_read(&nilfs->ns_segctor_sem);
 ndirtyblks = atomic_read(&nilfs->ns_ndirtyblks);
 up_read(&nilfs->ns_segctor_sem);

 return snprintf(buf, PAGE_SIZE, "%u\n", ndirtyblks);
}
