
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct path {int dentry; TYPE_1__* mnt; } ;
struct TYPE_10__ {int fs; TYPE_4__* nsproxy; } ;
struct TYPE_9__ {TYPE_3__* mnt_ns; } ;
struct TYPE_8__ {TYPE_2__* root; } ;
struct TYPE_6__ {int mnt_root; } ;
struct TYPE_7__ {TYPE_1__ mnt; } ;


 TYPE_5__* current ;
 scalar_t__ d_mountpoint (int ) ;
 scalar_t__ follow_down_one (struct path*) ;
 int get_fs_root (int ,struct path*) ;
 int path_equal (struct path*,struct path*) ;
 int path_get (struct path*) ;
 int path_put (struct path*) ;

bool current_chrooted(void)
{

 struct path ns_root;
 struct path fs_root;
 bool chrooted;


 ns_root.mnt = &current->nsproxy->mnt_ns->root->mnt;
 ns_root.dentry = ns_root.mnt->mnt_root;
 path_get(&ns_root);
 while (d_mountpoint(ns_root.dentry) && follow_down_one(&ns_root))
  ;

 get_fs_root(current->fs, &fs_root);

 chrooted = !path_equal(&fs_root, &ns_root);

 path_put(&fs_root);
 path_put(&ns_root);

 return chrooted;
}
