
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {struct ovl_fs* s_fs_info; } ;
struct ovl_fs {int numlowerfs; TYPE_2__* lower_fs; TYPE_1__* upper_mnt; } ;
struct TYPE_4__ {struct super_block* sb; } ;
struct TYPE_3__ {struct super_block* mnt_sb; } ;



struct super_block *ovl_same_sb(struct super_block *sb)
{
 struct ovl_fs *ofs = sb->s_fs_info;

 if (!ofs->numlowerfs)
  return ofs->upper_mnt->mnt_sb;
 else if (ofs->numlowerfs == 1 && !ofs->upper_mnt)
  return ofs->lower_fs[0].sb;
 else
  return ((void*)0);
}
