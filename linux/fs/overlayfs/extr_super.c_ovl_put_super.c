
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct ovl_fs* s_fs_info; } ;
struct ovl_fs {int dummy; } ;


 int ovl_free_fs (struct ovl_fs*) ;

__attribute__((used)) static void ovl_put_super(struct super_block *sb)
{
 struct ovl_fs *ofs = sb->s_fs_info;

 ovl_free_fs(ofs);
}
