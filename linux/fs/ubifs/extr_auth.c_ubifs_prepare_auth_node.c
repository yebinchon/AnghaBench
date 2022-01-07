
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct ubifs_info {int hash_tfm; } ;
struct TYPE_6__ {int node_type; } ;
struct ubifs_auth_node {TYPE_1__ ch; int hmac; } ;
struct shash_desc {int dummy; } ;
struct TYPE_7__ {int tfm; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int SHASH_DESC_ON_STACK (TYPE_2__*,int ) ;
 int UBIFS_AUTH_NODE ;
 int crypto_shash_descsize (int ) ;
 int crypto_shash_final (TYPE_2__*,int *) ;
 TYPE_2__* hash_desc ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;
 int ubifs_auth_node_sz (struct ubifs_info*) ;
 int ubifs_hash_calc_hmac (struct ubifs_info*,int *,int ) ;
 int ubifs_prepare_node (struct ubifs_info*,struct ubifs_auth_node*,int ,int ) ;
 int ubifs_shash_copy_state (struct ubifs_info*,struct shash_desc*,TYPE_2__*) ;

int ubifs_prepare_auth_node(struct ubifs_info *c, void *node,
        struct shash_desc *inhash)
{
 struct ubifs_auth_node *auth = node;
 u8 *hash;
 int err;

 hash = kmalloc(crypto_shash_descsize(c->hash_tfm), GFP_NOFS);
 if (!hash)
  return -ENOMEM;

 {
  SHASH_DESC_ON_STACK(hash_desc, c->hash_tfm);

  hash_desc->tfm = c->hash_tfm;
  ubifs_shash_copy_state(c, inhash, hash_desc);

  err = crypto_shash_final(hash_desc, hash);
  if (err)
   goto out;
 }

 err = ubifs_hash_calc_hmac(c, hash, auth->hmac);
 if (err)
  goto out;

 auth->ch.node_type = UBIFS_AUTH_NODE;
 ubifs_prepare_node(c, auth, ubifs_auth_node_sz(c), 0);

 err = 0;
out:
 kfree(hash);

 return err;
}
