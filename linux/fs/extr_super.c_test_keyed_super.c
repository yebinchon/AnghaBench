
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_fs_info; } ;
struct fs_context {scalar_t__ s_fs_info; } ;



__attribute__((used)) static int test_keyed_super(struct super_block *sb, struct fs_context *fc)
{
 return sb->s_fs_info == fc->s_fs_info;
}
