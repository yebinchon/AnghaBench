
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct ubifs_mst_node {int dummy; } ;
struct ubifs_info {int hash_tfm; } ;
struct ubifs_ch {int dummy; } ;
struct TYPE_4__ {int tfm; } ;


 int EPERM ;
 int SHASH_DESC_ON_STACK (TYPE_1__*,int ) ;
 int UBIFS_MAX_HASH_LEN ;
 scalar_t__ UBIFS_MST_NODE_SZ ;
 int crypto_shash_digest (TYPE_1__*,void const*,scalar_t__,int *) ;
 TYPE_1__* shash ;
 scalar_t__ ubifs_check_hash (struct ubifs_info const*,int const*,int *) ;

__attribute__((used)) static int mst_node_check_hash(const struct ubifs_info *c,
          const struct ubifs_mst_node *mst,
          const u8 *expected)
{
 u8 calc[UBIFS_MAX_HASH_LEN];
 const void *node = mst;

 SHASH_DESC_ON_STACK(shash, c->hash_tfm);

 shash->tfm = c->hash_tfm;

 crypto_shash_digest(shash, node + sizeof(struct ubifs_ch),
       UBIFS_MST_NODE_SZ - sizeof(struct ubifs_ch), calc);

 if (ubifs_check_hash(c, expected, calc))
  return -EPERM;

 return 0;
}
