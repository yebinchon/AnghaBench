
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {struct dentry* s_root; } ;
struct ovl_layer {int idx; TYPE_1__* mnt; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct dentry* mnt_root; } ;


 int ECHILD ;
 struct dentry* ERR_PTR (int) ;
 int EXDEV ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int PTR_ERR_OR_ZERO (struct dentry*) ;
 struct dentry* dget (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 struct dentry* ovl_dentry_real_at (struct dentry*,int ) ;
 struct dentry* ovl_lookup_real_ancestor (struct super_block*,struct dentry*,struct ovl_layer*) ;
 struct dentry* ovl_lookup_real_one (struct dentry*,struct dentry*,struct ovl_layer*) ;
 int pr_warn_ratelimited (char*,struct dentry*,int ,struct dentry*,int) ;

__attribute__((used)) static struct dentry *ovl_lookup_real(struct super_block *sb,
          struct dentry *real,
          struct ovl_layer *layer)
{
 struct dentry *connected;
 int err = 0;

 connected = ovl_lookup_real_ancestor(sb, real, layer);
 if (IS_ERR(connected))
  return connected;

 while (!err) {
  struct dentry *next, *this;
  struct dentry *parent = ((void*)0);
  struct dentry *real_connected = ovl_dentry_real_at(connected,
           layer->idx);

  if (real_connected == real)
   break;


  next = dget(real);
  for (;;) {
   parent = dget_parent(next);

   if (parent == real_connected)
    break;
   if (parent == layer->mnt->mnt_root) {
    dput(connected);
    connected = dget(sb->s_root);
    break;
   }







   if (parent == next) {
    err = -EXDEV;
    break;
   }

   dput(next);
   next = parent;
  }

  if (!err) {
   this = ovl_lookup_real_one(connected, next, layer);
   if (IS_ERR(this))
    err = PTR_ERR(this);
   if (err == -ECHILD) {
    this = ovl_lookup_real_ancestor(sb, real,
        layer);
    err = PTR_ERR_OR_ZERO(this);
   }
   if (!err) {
    dput(connected);
    connected = this;
   }
  }

  dput(parent);
  dput(next);
 }

 if (err)
  goto fail;

 return connected;

fail:
 pr_warn_ratelimited("overlayfs: failed to lookup by real (%pd2, layer=%d, connected=%pd2, err=%i)\n",
       real, layer->idx, connected, err);
 dput(connected);
 return ERR_PTR(err);
}
