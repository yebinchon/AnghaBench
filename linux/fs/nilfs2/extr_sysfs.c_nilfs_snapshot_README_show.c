
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_snapshot_attr {int dummy; } ;
struct nilfs_root {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 char* snapshot_readme_str ;
 int snprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t
nilfs_snapshot_README_show(struct nilfs_snapshot_attr *attr,
       struct nilfs_root *root, char *buf)
{
 return snprintf(buf, PAGE_SIZE, snapshot_readme_str);
}
