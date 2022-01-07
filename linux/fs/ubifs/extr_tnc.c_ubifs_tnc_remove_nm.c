
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {scalar_t__ cnext; } ;
struct ubifs_info {int tnc_mutex; scalar_t__ replaying; } ;
struct fscrypt_name {int dummy; } ;


 scalar_t__ IS_ERR (struct ubifs_znode*) ;
 int PTR_ERR (struct ubifs_znode*) ;
 int dbg_check_tnc (struct ubifs_info*,int ) ;
 int dbg_tnc (char*,int,struct ubifs_znode*,int) ;
 int dbg_tnck (union ubifs_key const*,char*) ;
 struct ubifs_znode* dirty_cow_bottom_up (struct ubifs_info*,struct ubifs_znode*) ;
 int fallible_resolve_collision (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*,struct fscrypt_name const*,int ) ;
 int lookup_level0_dirty (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int resolve_collision (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*,struct fscrypt_name const*) ;
 int tnc_delete (struct ubifs_info*,struct ubifs_znode*,int) ;
 int ubifs_zn_dirty (struct ubifs_znode*) ;

int ubifs_tnc_remove_nm(struct ubifs_info *c, const union ubifs_key *key,
   const struct fscrypt_name *nm)
{
 int n, err;
 struct ubifs_znode *znode;

 mutex_lock(&c->tnc_mutex);
 dbg_tnck(key, "key ");
 err = lookup_level0_dirty(c, key, &znode, &n);
 if (err < 0)
  goto out_unlock;

 if (err) {
  if (c->replaying)
   err = fallible_resolve_collision(c, key, &znode, &n,
        nm, 0);
  else
   err = resolve_collision(c, key, &znode, &n, nm);
  dbg_tnc("rc returned %d, znode %p, n %d", err, znode, n);
  if (err < 0)
   goto out_unlock;
  if (err) {

   if (znode->cnext || !ubifs_zn_dirty(znode)) {
    znode = dirty_cow_bottom_up(c, znode);
    if (IS_ERR(znode)) {
     err = PTR_ERR(znode);
     goto out_unlock;
    }
   }
   err = tnc_delete(c, znode, n);
  }
 }

out_unlock:
 if (!err)
  err = dbg_check_tnc(c, 0);
 mutex_unlock(&c->tnc_mutex);
 return err;
}
