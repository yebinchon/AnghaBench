
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_inode; int d_sb; int d_parent; } ;
struct cred {int dummy; } ;


 int LIST_HEAD (int ) ;
 int clear_nlink (int ) ;
 int d_inode (struct dentry*) ;
 int drop_nlink (int ) ;
 int list ;
 int ovl_cache_free (int *) ;
 int ovl_check_empty_dir (struct dentry*,int *) ;
 int ovl_copy_up (int ) ;
 int ovl_copyattr (int ,int ) ;
 struct dentry* ovl_dentry_upper (struct dentry*) ;
 int ovl_drop_write (struct dentry*) ;
 int ovl_lower_positive (struct dentry*) ;
 int ovl_nlink_end (struct dentry*) ;
 int ovl_nlink_start (struct dentry*) ;
 struct cred* ovl_override_creds (int ) ;
 int ovl_pure_upper (struct dentry*) ;
 int ovl_remove_and_whiteout (struct dentry*,int *) ;
 int ovl_remove_upper (struct dentry*,int,int *) ;
 int ovl_want_write (struct dentry*) ;
 int revert_creds (struct cred const*) ;

__attribute__((used)) static int ovl_do_remove(struct dentry *dentry, bool is_dir)
{
 int err;
 const struct cred *old_cred;
 struct dentry *upperdentry;
 bool lower_positive = ovl_lower_positive(dentry);
 LIST_HEAD(list);


 if (is_dir && (lower_positive || !ovl_pure_upper(dentry))) {
  err = ovl_check_empty_dir(dentry, &list);
  if (err)
   goto out;
 }

 err = ovl_want_write(dentry);
 if (err)
  goto out;

 err = ovl_copy_up(dentry->d_parent);
 if (err)
  goto out_drop_write;

 err = ovl_nlink_start(dentry);
 if (err)
  goto out_drop_write;

 old_cred = ovl_override_creds(dentry->d_sb);
 if (!lower_positive)
  err = ovl_remove_upper(dentry, is_dir, &list);
 else
  err = ovl_remove_and_whiteout(dentry, &list);
 revert_creds(old_cred);
 if (!err) {
  if (is_dir)
   clear_nlink(dentry->d_inode);
  else
   drop_nlink(dentry->d_inode);
 }
 ovl_nlink_end(dentry);







 upperdentry = ovl_dentry_upper(dentry);
 if (upperdentry)
  ovl_copyattr(d_inode(upperdentry), d_inode(dentry));

out_drop_write:
 ovl_drop_write(dentry);
out:
 ovl_cache_free(&list);
 return err;
}
