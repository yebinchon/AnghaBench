
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int len; int name; } ;
struct dentry {scalar_t__ d_inode; struct dentry* d_parent; TYPE_1__ d_name; int d_sb; } ;
struct cred {int dummy; } ;


 int EINVAL ;
 int ESTALE ;
 int EXDEV ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int LIST_HEAD (int ) ;
 int PTR_ERR (struct dentry*) ;
 unsigned int RENAME_EXCHANGE ;
 unsigned int RENAME_NOREPLACE ;
 unsigned int RENAME_WHITEOUT ;
 scalar_t__ WARN_ON (int) ;
 int clear_nlink (int ) ;
 int d_inode (struct dentry*) ;
 int d_is_dir (struct dentry*) ;
 int d_is_negative (struct dentry*) ;
 int dput (struct dentry*) ;
 int drop_nlink (int ) ;
 int list ;
 int list_empty (int *) ;
 struct dentry* lock_rename (struct dentry*,struct dentry*) ;
 struct dentry* lookup_one_len (int ,struct dentry*,int ) ;
 int ovl_cache_free (int *) ;
 int ovl_can_move (struct dentry*) ;
 int ovl_check_empty_dir (struct dentry*,int *) ;
 int ovl_cleanup (scalar_t__,struct dentry*) ;
 struct dentry* ovl_clear_empty (struct dentry*,int *) ;
 int ovl_copy_up (struct dentry*) ;
 int ovl_copyattr (int ,int ) ;
 int ovl_dentry_is_opaque (struct dentry*) ;
 scalar_t__ ovl_dentry_is_whiteout (struct dentry*) ;
 struct dentry* ovl_dentry_upper (struct dentry*) ;
 int ovl_dir_modified (struct dentry*,int) ;
 int ovl_do_rename (scalar_t__,struct dentry*,scalar_t__,struct dentry*,unsigned int) ;
 int ovl_drop_write (struct dentry*) ;
 int ovl_is_whiteout (struct dentry*) ;
 scalar_t__ ovl_lower_positive (struct dentry*) ;
 int ovl_matches_upper (struct dentry*,struct dentry*) ;
 int ovl_nlink_end (struct dentry*) ;
 int ovl_nlink_start (struct dentry*) ;
 struct cred* ovl_override_creds (int ) ;
 int ovl_pure_upper (struct dentry*) ;
 int ovl_set_impure (struct dentry*,struct dentry*) ;
 int ovl_set_opaque_xerr (struct dentry*,struct dentry*,int) ;
 int ovl_set_redirect (struct dentry*,int) ;
 scalar_t__ ovl_type_merge (struct dentry*) ;
 scalar_t__ ovl_type_merge_or_lower (struct dentry*) ;
 scalar_t__ ovl_type_origin (struct dentry*) ;
 int ovl_want_write (struct dentry*) ;
 int revert_creds (struct cred const*) ;
 int unlock_rename (struct dentry*,struct dentry*) ;

__attribute__((used)) static int ovl_rename(struct inode *olddir, struct dentry *old,
        struct inode *newdir, struct dentry *new,
        unsigned int flags)
{
 int err;
 struct dentry *old_upperdir;
 struct dentry *new_upperdir;
 struct dentry *olddentry;
 struct dentry *newdentry;
 struct dentry *trap;
 bool old_opaque;
 bool new_opaque;
 bool cleanup_whiteout = 0;
 bool update_nlink = 0;
 bool overwrite = !(flags & RENAME_EXCHANGE);
 bool is_dir = d_is_dir(old);
 bool new_is_dir = d_is_dir(new);
 bool samedir = olddir == newdir;
 struct dentry *opaquedir = ((void*)0);
 const struct cred *old_cred = ((void*)0);
 LIST_HEAD(list);

 err = -EINVAL;
 if (flags & ~(RENAME_EXCHANGE | RENAME_NOREPLACE))
  goto out;

 flags &= ~RENAME_NOREPLACE;


 err = -EXDEV;
 if (!ovl_can_move(old))
  goto out;
 if (!overwrite && !ovl_can_move(new))
  goto out;

 if (overwrite && new_is_dir && !ovl_pure_upper(new)) {
  err = ovl_check_empty_dir(new, &list);
  if (err)
   goto out;
 }

 if (overwrite) {
  if (ovl_lower_positive(old)) {
   if (!ovl_dentry_is_whiteout(new)) {

    flags |= RENAME_WHITEOUT;
   } else {

    flags |= RENAME_EXCHANGE;
   }
  } else if (is_dir && ovl_dentry_is_whiteout(new)) {
   flags |= RENAME_EXCHANGE;
   cleanup_whiteout = 1;
  }
 }

 err = ovl_want_write(old);
 if (err)
  goto out;

 err = ovl_copy_up(old);
 if (err)
  goto out_drop_write;

 err = ovl_copy_up(new->d_parent);
 if (err)
  goto out_drop_write;
 if (!overwrite) {
  err = ovl_copy_up(new);
  if (err)
   goto out_drop_write;
 } else if (d_inode(new)) {
  err = ovl_nlink_start(new);
  if (err)
   goto out_drop_write;

  update_nlink = 1;
 }

 old_cred = ovl_override_creds(old->d_sb);

 if (!list_empty(&list)) {
  opaquedir = ovl_clear_empty(new, &list);
  err = PTR_ERR(opaquedir);
  if (IS_ERR(opaquedir)) {
   opaquedir = ((void*)0);
   goto out_revert_creds;
  }
 }

 old_upperdir = ovl_dentry_upper(old->d_parent);
 new_upperdir = ovl_dentry_upper(new->d_parent);

 if (!samedir) {






  if (ovl_type_origin(old)) {
   err = ovl_set_impure(new->d_parent, new_upperdir);
   if (err)
    goto out_revert_creds;
  }
  if (!overwrite && ovl_type_origin(new)) {
   err = ovl_set_impure(old->d_parent, old_upperdir);
   if (err)
    goto out_revert_creds;
  }
 }

 trap = lock_rename(new_upperdir, old_upperdir);

 olddentry = lookup_one_len(old->d_name.name, old_upperdir,
       old->d_name.len);
 err = PTR_ERR(olddentry);
 if (IS_ERR(olddentry))
  goto out_unlock;

 err = -ESTALE;
 if (!ovl_matches_upper(old, olddentry))
  goto out_dput_old;

 newdentry = lookup_one_len(new->d_name.name, new_upperdir,
       new->d_name.len);
 err = PTR_ERR(newdentry);
 if (IS_ERR(newdentry))
  goto out_dput_old;

 old_opaque = ovl_dentry_is_opaque(old);
 new_opaque = ovl_dentry_is_opaque(new);

 err = -ESTALE;
 if (d_inode(new) && ovl_dentry_upper(new)) {
  if (opaquedir) {
   if (newdentry != opaquedir)
    goto out_dput;
  } else {
   if (!ovl_matches_upper(new, newdentry))
    goto out_dput;
  }
 } else {
  if (!d_is_negative(newdentry) &&
      (!new_opaque || !ovl_is_whiteout(newdentry)))
   goto out_dput;
 }

 if (olddentry == trap)
  goto out_dput;
 if (newdentry == trap)
  goto out_dput;

 if (WARN_ON(olddentry->d_inode == newdentry->d_inode))
  goto out_dput;

 err = 0;
 if (ovl_type_merge_or_lower(old))
  err = ovl_set_redirect(old, samedir);
 else if (is_dir && !old_opaque && ovl_type_merge(new->d_parent))
  err = ovl_set_opaque_xerr(old, olddentry, -EXDEV);
 if (err)
  goto out_dput;

 if (!overwrite && ovl_type_merge_or_lower(new))
  err = ovl_set_redirect(new, samedir);
 else if (!overwrite && new_is_dir && !new_opaque &&
   ovl_type_merge(old->d_parent))
  err = ovl_set_opaque_xerr(new, newdentry, -EXDEV);
 if (err)
  goto out_dput;

 err = ovl_do_rename(old_upperdir->d_inode, olddentry,
       new_upperdir->d_inode, newdentry, flags);
 if (err)
  goto out_dput;

 if (cleanup_whiteout)
  ovl_cleanup(old_upperdir->d_inode, newdentry);

 if (overwrite && d_inode(new)) {
  if (new_is_dir)
   clear_nlink(d_inode(new));
  else
   drop_nlink(d_inode(new));
 }

 ovl_dir_modified(old->d_parent, ovl_type_origin(old) ||
    (!overwrite && ovl_type_origin(new)));
 ovl_dir_modified(new->d_parent, ovl_type_origin(old) ||
    (d_inode(new) && ovl_type_origin(new)));


 ovl_copyattr(d_inode(olddentry), d_inode(old));
 if (d_inode(new) && ovl_dentry_upper(new))
  ovl_copyattr(d_inode(newdentry), d_inode(new));

out_dput:
 dput(newdentry);
out_dput_old:
 dput(olddentry);
out_unlock:
 unlock_rename(new_upperdir, old_upperdir);
out_revert_creds:
 revert_creds(old_cred);
 if (update_nlink)
  ovl_nlink_end(new);
out_drop_write:
 ovl_drop_write(old);
out:
 dput(opaquedir);
 ovl_cache_free(&list);
 return err;
}
