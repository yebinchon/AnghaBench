
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {struct ovl_fs* s_fs_info; } ;
struct TYPE_2__ {scalar_t__ redirect_dir; } ;
struct ovl_fs {int noxattr; TYPE_1__ config; } ;



bool ovl_redirect_dir(struct super_block *sb)
{
 struct ovl_fs *ofs = sb->s_fs_info;

 return ofs->config.redirect_dir && !ofs->noxattr;
}
