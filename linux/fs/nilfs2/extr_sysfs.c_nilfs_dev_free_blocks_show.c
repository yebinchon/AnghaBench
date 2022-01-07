
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int dummy; } ;
struct nilfs_dev_attr {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ sector_t ;


 int PAGE_SIZE ;
 int nilfs_count_free_blocks (struct the_nilfs*,scalar_t__*) ;
 int snprintf (char*,int ,char*,unsigned long long) ;

__attribute__((used)) static
ssize_t nilfs_dev_free_blocks_show(struct nilfs_dev_attr *attr,
       struct the_nilfs *nilfs,
       char *buf)
{
 sector_t free_blocks = 0;

 nilfs_count_free_blocks(nilfs, &free_blocks);
 return snprintf(buf, PAGE_SIZE, "%llu\n",
   (unsigned long long)free_blocks);
}
