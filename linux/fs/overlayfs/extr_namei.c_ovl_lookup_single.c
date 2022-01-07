
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_lookup_data {int stop; int opaque; int metacopy; int is_dir; scalar_t__ last; int sb; } ;
struct dentry {int d_inode; } ;


 int ELOOP ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int EREMOTE ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int d_can_lookup (struct dentry*) ;
 int d_is_reg (struct dentry*) ;
 int dput (struct dentry*) ;
 struct dentry* lookup_one_len_unlocked (char const*,struct dentry*,unsigned int) ;
 int ovl_check_metacopy_xattr (struct dentry*) ;
 int ovl_check_redirect (struct dentry*,struct ovl_lookup_data*,size_t,char const*) ;
 scalar_t__ ovl_dentry_weird (struct dentry*) ;
 scalar_t__ ovl_is_opaquedir (struct dentry*) ;
 scalar_t__ ovl_is_whiteout (struct dentry*) ;
 scalar_t__ ovl_lookup_trap_inode (int ,struct dentry*) ;

__attribute__((used)) static int ovl_lookup_single(struct dentry *base, struct ovl_lookup_data *d,
        const char *name, unsigned int namelen,
        size_t prelen, const char *post,
        struct dentry **ret)
{
 struct dentry *this;
 int err;
 bool last_element = !post[0];

 this = lookup_one_len_unlocked(name, base, namelen);
 if (IS_ERR(this)) {
  err = PTR_ERR(this);
  this = ((void*)0);
  if (err == -ENOENT || err == -ENAMETOOLONG)
   goto out;
  goto out_err;
 }
 if (!this->d_inode)
  goto put_and_out;

 if (ovl_dentry_weird(this)) {

  err = -EREMOTE;
  goto out_err;
 }
 if (ovl_is_whiteout(this)) {
  d->stop = d->opaque = 1;
  goto put_and_out;
 }




 if (last_element && d->metacopy && !d_is_reg(this)) {
  d->stop = 1;
  goto put_and_out;
 }
 if (!d_can_lookup(this)) {
  if (d->is_dir || !last_element) {
   d->stop = 1;
   goto put_and_out;
  }
  err = ovl_check_metacopy_xattr(this);
  if (err < 0)
   goto out_err;

  d->metacopy = err;
  d->stop = !d->metacopy;
  if (!d->metacopy || d->last)
   goto out;
 } else {
  if (ovl_lookup_trap_inode(d->sb, this)) {

   err = -ELOOP;
   goto out_err;
  }

  if (last_element)
   d->is_dir = 1;
  if (d->last)
   goto out;

  if (ovl_is_opaquedir(this)) {
   d->stop = 1;
   if (last_element)
    d->opaque = 1;
   goto out;
  }
 }
 err = ovl_check_redirect(this, d, prelen, post);
 if (err)
  goto out_err;
out:
 *ret = this;
 return 0;

put_and_out:
 dput(this);
 this = ((void*)0);
 goto out;

out_err:
 dput(this);
 return err;
}
