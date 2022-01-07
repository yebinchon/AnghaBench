
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int dummy; } ;
struct nilfs_superblock_attr {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 char* sb_readme_str ;
 int snprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t
nilfs_superblock_README_show(struct nilfs_superblock_attr *attr,
    struct the_nilfs *nilfs, char *buf)
{
 return snprintf(buf, PAGE_SIZE, sb_readme_str);
}
