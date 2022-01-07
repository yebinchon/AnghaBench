
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ovl_layer {int idx; } ;
struct TYPE_2__ {int len; int name; } ;
struct name_snapshot {TYPE_1__ name; } ;
struct inode {int dummy; } ;
struct dentry {int d_inode; } ;


 int ECHILD ;
 int ENOENT ;
 struct dentry* ERR_PTR (int) ;
 int ESTALE ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int I_MUTEX_PARENT ;
 int PTR_ERR (struct dentry*) ;
 struct inode* d_inode (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_lock_nested (struct inode*,int ) ;
 int inode_unlock (struct inode*) ;
 struct dentry* lookup_one_len (int ,struct dentry*,int ) ;
 struct dentry* ovl_dentry_real_at (struct dentry*,int ) ;
 int pr_warn_ratelimited (char*,struct dentry*,int ,struct dentry*,int) ;
 int release_dentry_name_snapshot (struct name_snapshot*) ;
 int take_dentry_name_snapshot (struct name_snapshot*,struct dentry*) ;

__attribute__((used)) static struct dentry *ovl_lookup_real_one(struct dentry *connected,
       struct dentry *real,
       struct ovl_layer *layer)
{
 struct inode *dir = d_inode(connected);
 struct dentry *this, *parent = ((void*)0);
 struct name_snapshot name;
 int err;
 inode_lock_nested(dir, I_MUTEX_PARENT);
 err = -ECHILD;
 parent = dget_parent(real);
 if (ovl_dentry_real_at(connected, layer->idx) != parent)
  goto fail;







 take_dentry_name_snapshot(&name, real);
 this = lookup_one_len(name.name.name, connected, name.name.len);
 err = PTR_ERR(this);
 if (IS_ERR(this)) {
  goto fail;
 } else if (!this || !this->d_inode) {
  dput(this);
  err = -ENOENT;
  goto fail;
 } else if (ovl_dentry_real_at(this, layer->idx) != real) {
  dput(this);
  err = -ESTALE;
  goto fail;
 }

out:
 release_dentry_name_snapshot(&name);
 dput(parent);
 inode_unlock(dir);
 return this;

fail:
 pr_warn_ratelimited("overlayfs: failed to lookup one by real (%pd2, layer=%d, connected=%pd2, err=%i)\n",
       real, layer->idx, connected, err);
 this = ERR_PTR(err);
 goto out;
}
