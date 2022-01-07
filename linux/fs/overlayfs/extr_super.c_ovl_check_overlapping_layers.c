
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ovl_fs {int numlower; TYPE_2__* lower_layers; int workbasedir; TYPE_3__* upper_mnt; } ;
struct TYPE_6__ {int mnt_root; } ;
struct TYPE_5__ {TYPE_1__* mnt; } ;
struct TYPE_4__ {int mnt_root; } ;


 int ovl_check_layer (struct super_block*,struct ovl_fs*,int ,char*) ;

__attribute__((used)) static int ovl_check_overlapping_layers(struct super_block *sb,
     struct ovl_fs *ofs)
{
 int i, err;

 if (ofs->upper_mnt) {
  err = ovl_check_layer(sb, ofs, ofs->upper_mnt->mnt_root,
          "upperdir");
  if (err)
   return err;
  err = ovl_check_layer(sb, ofs, ofs->workbasedir, "workdir");
  if (err)
   return err;
 }

 for (i = 0; i < ofs->numlower; i++) {
  err = ovl_check_layer(sb, ofs,
          ofs->lower_layers[i].mnt->mnt_root,
          "lowerdir");
  if (err)
   return err;
 }

 return 0;
}
