
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_fs_info; } ;



__attribute__((used)) static inline size_t romfs_maxsize(struct super_block *sb)
{
 return (size_t) (unsigned long) sb->s_fs_info;
}
