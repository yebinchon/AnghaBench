
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_snapshot_attr {int dummy; } ;
struct nilfs_root {int blocks_count; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 scalar_t__ atomic64_read (int *) ;
 int snprintf (char*,int ,char*,unsigned long long) ;

__attribute__((used)) static ssize_t
nilfs_snapshot_blocks_count_show(struct nilfs_snapshot_attr *attr,
     struct nilfs_root *root, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%llu\n",
   (unsigned long long)atomic64_read(&root->blocks_count));
}
