
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct ubifs_info {int hash_tfm; } ;
struct shash_desc {int dummy; } ;
struct TYPE_5__ {int tfm; } ;


 int SHASH_DESC_ON_STACK (TYPE_1__*,int ) ;
 int crypto_shash_final (TYPE_1__*,int *) ;
 TYPE_1__* hash_desc ;
 int ubifs_shash_copy_state (struct ubifs_info*,struct shash_desc*,TYPE_1__*) ;

__attribute__((used)) static int authenticate_sleb_hash(struct ubifs_info *c, struct shash_desc *log_hash, u8 *hash)
{
 SHASH_DESC_ON_STACK(hash_desc, c->hash_tfm);

 hash_desc->tfm = c->hash_tfm;

 ubifs_shash_copy_state(c, log_hash, hash_desc);
 return crypto_shash_final(hash_desc, hash);
}
