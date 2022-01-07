
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int tfm; } ;


 int BUG_ON (int) ;
 int SHASH_DESC_ON_STACK (TYPE_1__*,int ) ;
 int barrier_data (int *) ;
 int crypto_shash_update (TYPE_1__*,void const*,unsigned int) ;
 TYPE_1__* shash ;
 scalar_t__ shash_desc_ctx (TYPE_1__*) ;
 int tfm ;

u32 crc32c(u32 crc, const void *address, unsigned int length)
{
 SHASH_DESC_ON_STACK(shash, tfm);
 u32 ret, *ctx = (u32 *)shash_desc_ctx(shash);
 int err;

 shash->tfm = tfm;
 *ctx = crc;

 err = crypto_shash_update(shash, address, length);
 BUG_ON(err);

 ret = *ctx;
 barrier_data(ctx);
 return ret;
}
