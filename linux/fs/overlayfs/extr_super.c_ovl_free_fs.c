
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct ovl_fs* redirect_mode; struct ovl_fs* workdir; struct ovl_fs* upperdir; struct ovl_fs* lowerdir; } ;
struct ovl_fs {unsigned int numlower; unsigned int numlowerfs; scalar_t__ creator_cred; TYPE_1__ config; struct ovl_fs* lower_fs; struct ovl_fs* lower_layers; int pseudo_dev; TYPE_2__* mnt; int trap; TYPE_2__* upper_mnt; scalar_t__ upperdir_locked; int workbasedir; scalar_t__ workdir_locked; int workdir; int indexdir; int upperdir_trap; int workdir_trap; int indexdir_trap; int workbasedir_trap; } ;
struct TYPE_4__ {int mnt_root; } ;


 int dput (int ) ;
 int free_anon_bdev (int ) ;
 int iput (int ) ;
 int kfree (struct ovl_fs*) ;
 int mntput (TYPE_2__*) ;
 int ovl_inuse_unlock (int ) ;
 int put_cred (scalar_t__) ;

__attribute__((used)) static void ovl_free_fs(struct ovl_fs *ofs)
{
 unsigned i;

 iput(ofs->workbasedir_trap);
 iput(ofs->indexdir_trap);
 iput(ofs->workdir_trap);
 iput(ofs->upperdir_trap);
 dput(ofs->indexdir);
 dput(ofs->workdir);
 if (ofs->workdir_locked)
  ovl_inuse_unlock(ofs->workbasedir);
 dput(ofs->workbasedir);
 if (ofs->upperdir_locked)
  ovl_inuse_unlock(ofs->upper_mnt->mnt_root);
 mntput(ofs->upper_mnt);
 for (i = 0; i < ofs->numlower; i++) {
  iput(ofs->lower_layers[i].trap);
  mntput(ofs->lower_layers[i].mnt);
 }
 for (i = 0; i < ofs->numlowerfs; i++)
  free_anon_bdev(ofs->lower_fs[i].pseudo_dev);
 kfree(ofs->lower_layers);
 kfree(ofs->lower_fs);

 kfree(ofs->config.lowerdir);
 kfree(ofs->config.upperdir);
 kfree(ofs->config.workdir);
 kfree(ofs->config.redirect_mode);
 if (ofs->creator_cred)
  put_cred(ofs->creator_cred);
 kfree(ofs);
}
