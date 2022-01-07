
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rb_root {int dummy; } ;
struct path {scalar_t__ dentry; } ;
struct TYPE_2__ {int actor; } ;
struct ovl_readdir_data {int is_lowest; int is_upper; int middle; struct list_head* list; struct rb_root* root; struct dentry* dentry; TYPE_1__ ctx; } ;
struct list_head {int dummy; } ;
struct dentry {int dummy; } ;


 int list_add (int *,struct list_head*) ;
 int list_del (int *) ;
 scalar_t__ ovl_dentry_upper (struct dentry*) ;
 int ovl_dir_read (struct path*,struct ovl_readdir_data*) ;
 int ovl_fill_merge ;
 int ovl_path_next (int,struct dentry*,struct path*) ;

__attribute__((used)) static int ovl_dir_read_merged(struct dentry *dentry, struct list_head *list,
 struct rb_root *root)
{
 int err;
 struct path realpath;
 struct ovl_readdir_data rdd = {
  .ctx.actor = ovl_fill_merge,
  .dentry = dentry,
  .list = list,
  .root = root,
  .is_lowest = 0,
 };
 int idx, next;

 for (idx = 0; idx != -1; idx = next) {
  next = ovl_path_next(idx, dentry, &realpath);
  rdd.is_upper = ovl_dentry_upper(dentry) == realpath.dentry;

  if (next != -1) {
   err = ovl_dir_read(&realpath, &rdd);
   if (err)
    break;
  } else {




   list_add(&rdd.middle, rdd.list);
   rdd.is_lowest = 1;
   err = ovl_dir_read(&realpath, &rdd);
   list_del(&rdd.middle);
  }
 }
 return err;
}
