
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int name; int len; } ;
struct ovl_fs {int indexdir; } ;
struct ovl_fh {int dummy; } ;
struct dentry {int dummy; } ;


 int EIO ;
 int ENOENT ;
 struct dentry* ERR_PTR (int) ;
 int ESTALE ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 scalar_t__ d_is_negative (struct dentry*) ;
 int dput (struct dentry*) ;
 int kfree (int ) ;
 struct dentry* lookup_one_len_unlocked (int ,int ,int ) ;
 scalar_t__ ovl_dentry_weird (struct dentry*) ;
 int ovl_get_index_name_fh (struct ovl_fh*,struct qstr*) ;
 scalar_t__ ovl_is_whiteout (struct dentry*) ;

struct dentry *ovl_get_index_fh(struct ovl_fs *ofs, struct ovl_fh *fh)
{
 struct dentry *index;
 struct qstr name;
 int err;

 err = ovl_get_index_name_fh(fh, &name);
 if (err)
  return ERR_PTR(err);

 index = lookup_one_len_unlocked(name.name, ofs->indexdir, name.len);
 kfree(name.name);
 if (IS_ERR(index)) {
  if (PTR_ERR(index) == -ENOENT)
   index = ((void*)0);
  return index;
 }

 if (d_is_negative(index))
  err = 0;
 else if (ovl_is_whiteout(index))
  err = -ESTALE;
 else if (ovl_dentry_weird(index))
  err = -EIO;
 else
  return index;

 dput(index);
 return ERR_PTR(err);
}
