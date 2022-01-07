
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct kernfs_super_info {void const* ns; } ;


 struct kernfs_super_info* kernfs_info (struct super_block*) ;

const void *kernfs_super_ns(struct super_block *sb)
{
 struct kernfs_super_info *info = kernfs_info(sb);

 return info->ns;
}
