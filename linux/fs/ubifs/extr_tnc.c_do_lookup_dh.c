
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
typedef int uint32_t ;
struct ubifs_znode {int dummy; } ;
struct ubifs_info {int tnc_mutex; } ;
struct ubifs_dent_node {int dummy; } ;


 int is_hash_key (struct ubifs_info*,union ubifs_key const*) ;
 int key_inum (struct ubifs_info*,union ubifs_key const*) ;
 int lowest_dent_key (struct ubifs_info*,union ubifs_key*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int search_dh_cookie (struct ubifs_info*,union ubifs_key const*,struct ubifs_dent_node*,int ,struct ubifs_znode**,int*,int) ;
 int ubifs_assert (struct ubifs_info*,int ) ;
 int ubifs_lookup_level0 (struct ubifs_info*,union ubifs_key*,struct ubifs_znode**,int*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int do_lookup_dh(struct ubifs_info *c, const union ubifs_key *key,
   struct ubifs_dent_node *dent, uint32_t cookie)
{
 int n, err;
 struct ubifs_znode *znode;
 union ubifs_key start_key;

 ubifs_assert(c, is_hash_key(c, key));

 lowest_dent_key(c, &start_key, key_inum(c, key));

 mutex_lock(&c->tnc_mutex);
 err = ubifs_lookup_level0(c, &start_key, &znode, &n);
 if (unlikely(err < 0))
  goto out_unlock;

 err = search_dh_cookie(c, key, dent, cookie, &znode, &n, err);

out_unlock:
 mutex_unlock(&c->tnc_mutex);
 return err;
}
