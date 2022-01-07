
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int name; int len; } ;
struct inode {int dummy; } ;
struct dentry {int d_sb; } ;


 int EIO ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int OVL_CATTR (int) ;
 int OVL_INDEX ;
 int PTR_ERR (struct dentry*) ;
 int S_IFDIR ;
 scalar_t__ WARN_ON (int) ;
 struct inode* d_inode (struct dentry*) ;
 int d_is_dir (struct dentry*) ;
 int dput (struct dentry*) ;
 int kfree (int ) ;
 struct dentry* lookup_one_len (int ,struct dentry*,int ) ;
 int ovl_cleanup (struct inode*,struct dentry*) ;
 struct dentry* ovl_create_temp (struct dentry*,int ) ;
 int ovl_do_rename (struct inode*,struct dentry*,struct inode*,struct dentry*,int ) ;
 int ovl_get_index_name (struct dentry*,struct qstr*) ;
 struct dentry* ovl_indexdir (int ) ;
 int ovl_set_upper_fh (struct dentry*,struct dentry*) ;
 int ovl_test_flag (int ,struct inode*) ;

__attribute__((used)) static int ovl_create_index(struct dentry *dentry, struct dentry *origin,
       struct dentry *upper)
{
 struct dentry *indexdir = ovl_indexdir(dentry->d_sb);
 struct inode *dir = d_inode(indexdir);
 struct dentry *index = ((void*)0);
 struct dentry *temp = ((void*)0);
 struct qstr name = { };
 int err;
 if (WARN_ON(!d_is_dir(dentry)))
  return -EIO;


 if (WARN_ON(ovl_test_flag(OVL_INDEX, d_inode(dentry))))
  return -EIO;

 err = ovl_get_index_name(origin, &name);
 if (err)
  return err;

 temp = ovl_create_temp(indexdir, OVL_CATTR(S_IFDIR | 0));
 err = PTR_ERR(temp);
 if (IS_ERR(temp))
  goto free_name;

 err = ovl_set_upper_fh(upper, temp);
 if (err)
  goto out;

 index = lookup_one_len(name.name, indexdir, name.len);
 if (IS_ERR(index)) {
  err = PTR_ERR(index);
 } else {
  err = ovl_do_rename(dir, temp, dir, index, 0);
  dput(index);
 }
out:
 if (err)
  ovl_cleanup(dir, temp);
 dput(temp);
free_name:
 kfree(name.name);
 return err;
}
