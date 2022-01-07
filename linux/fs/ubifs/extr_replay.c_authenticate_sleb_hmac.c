
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct ubifs_info {int hash_len; int hmac_tfm; } ;
struct TYPE_4__ {int tfm; } ;


 int SHASH_DESC_ON_STACK (TYPE_1__*,int ) ;
 int crypto_shash_digest (TYPE_1__*,int *,int ,int *) ;
 TYPE_1__* hmac_desc ;

__attribute__((used)) static int authenticate_sleb_hmac(struct ubifs_info *c, u8 *hash, u8 *hmac)
{
 SHASH_DESC_ON_STACK(hmac_desc, c->hmac_tfm);

 hmac_desc->tfm = c->hmac_tfm;

 return crypto_shash_digest(hmac_desc, hash, c->hash_len, hmac);
}
