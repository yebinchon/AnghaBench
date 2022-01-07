
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct crypto_skcipher** data; } ;
struct key_preparsed_payload {int datalen; TYPE_1__ payload; int data; } ;
struct crypto_skcipher {int dummy; } ;


 int BUG () ;
 int CRYPTO_ALG_ASYNC ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct crypto_skcipher*) ;
 int PTR_ERR (struct crypto_skcipher*) ;
 int _enter (char*,int) ;
 int _leave (char*,...) ;
 struct crypto_skcipher* crypto_alloc_skcipher (char*,int ,int ) ;
 scalar_t__ crypto_skcipher_setkey (struct crypto_skcipher*,int ,int) ;
 int memcpy (struct crypto_skcipher**,int ,int) ;

__attribute__((used)) static int rxrpc_preparse_s(struct key_preparsed_payload *prep)
{
 struct crypto_skcipher *ci;

 _enter("%zu", prep->datalen);

 if (prep->datalen != 8)
  return -EINVAL;

 memcpy(&prep->payload.data[2], prep->data, 8);

 ci = crypto_alloc_skcipher("pcbc(des)", 0, CRYPTO_ALG_ASYNC);
 if (IS_ERR(ci)) {
  _leave(" = %ld", PTR_ERR(ci));
  return PTR_ERR(ci);
 }

 if (crypto_skcipher_setkey(ci, prep->data, 8) < 0)
  BUG();

 prep->payload.data[0] = ci;
 _leave(" = 0");
 return 0;
}
