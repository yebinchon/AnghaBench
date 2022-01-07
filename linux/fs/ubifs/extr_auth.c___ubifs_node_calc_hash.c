
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct ubifs_info {int hash_tfm; } ;
struct ubifs_ch {int len; } ;
struct TYPE_4__ {int tfm; } ;


 int SHASH_DESC_ON_STACK (TYPE_1__*,int ) ;
 int crypto_shash_digest (TYPE_1__*,void const*,int ,int *) ;
 int le32_to_cpu (int ) ;
 TYPE_1__* shash ;

int __ubifs_node_calc_hash(const struct ubifs_info *c, const void *node,
       u8 *hash)
{
 const struct ubifs_ch *ch = node;
 SHASH_DESC_ON_STACK(shash, c->hash_tfm);
 int err;

 shash->tfm = c->hash_tfm;

 err = crypto_shash_digest(shash, node, le32_to_cpu(ch->len), hash);
 if (err < 0)
  return err;
 return 0;
}
