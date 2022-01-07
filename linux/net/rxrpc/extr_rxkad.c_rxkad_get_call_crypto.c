
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct skcipher_request {int dummy; } ;
struct rxrpc_call {struct skcipher_request* cipher_req; TYPE_2__* conn; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_4__ {TYPE_1__* cipher; } ;
struct TYPE_3__ {struct crypto_skcipher base; } ;


 int GFP_NOFS ;
 struct skcipher_request* skcipher_request_alloc (struct crypto_skcipher*,int ) ;

__attribute__((used)) static struct skcipher_request *rxkad_get_call_crypto(struct rxrpc_call *call)
{
 struct crypto_skcipher *tfm = &call->conn->cipher->base;
 struct skcipher_request *cipher_req = call->cipher_req;

 if (!cipher_req) {
  cipher_req = skcipher_request_alloc(tfm, GFP_NOFS);
  if (!cipher_req)
   return ((void*)0);
  call->cipher_req = cipher_req;
 }

 return cipher_req;
}
