
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {int * zbranch; } ;
struct ubifs_info {int tnc_mutex; } ;
struct fscrypt_name {int dummy; } ;


 int ENOENT ;
 int dbg_tnc (char*,int,struct ubifs_znode*,int) ;
 int dbg_tnck (union ubifs_key const*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int resolve_collision (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*,struct fscrypt_name const*) ;
 int tnc_read_hashed_node (struct ubifs_info*,int *,void*) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_lookup_level0 (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int do_lookup_nm(struct ubifs_info *c, const union ubifs_key *key,
   void *node, const struct fscrypt_name *nm)
{
 int found, n, err;
 struct ubifs_znode *znode;

 dbg_tnck(key, "key ");
 mutex_lock(&c->tnc_mutex);
 found = ubifs_lookup_level0(c, key, &znode, &n);
 if (!found) {
  err = -ENOENT;
  goto out_unlock;
 } else if (found < 0) {
  err = found;
  goto out_unlock;
 }

 ubifs_assert(c, n >= 0);

 err = resolve_collision(c, key, &znode, &n, nm);
 dbg_tnc("rc returned %d, znode %p, n %d", err, znode, n);
 if (unlikely(err < 0))
  goto out_unlock;
 if (err == 0) {
  err = -ENOENT;
  goto out_unlock;
 }

 err = tnc_read_hashed_node(c, &znode->zbranch[n], node);

out_unlock:
 mutex_unlock(&c->tnc_mutex);
 return err;
}
