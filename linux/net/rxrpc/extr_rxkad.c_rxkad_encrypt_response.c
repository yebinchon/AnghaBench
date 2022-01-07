
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct rxrpc_crypt {int x; } ;
struct rxrpc_connection {TYPE_1__* cipher; } ;
struct rxkad_response {int encrypted; } ;
struct rxkad_key {int session_key; } ;
typedef int iv ;
struct TYPE_2__ {int base; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int crypto_skcipher_encrypt (struct skcipher_request*) ;
 int memcpy (struct rxrpc_crypt*,int ,int) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_buf (struct scatterlist*,int *,int) ;
 struct skcipher_request* skcipher_request_alloc (int *,int ) ;
 int skcipher_request_free (struct skcipher_request*) ;
 int skcipher_request_set_callback (struct skcipher_request*,int ,int *,int *) ;
 int skcipher_request_set_crypt (struct skcipher_request*,struct scatterlist*,struct scatterlist*,int,int ) ;
 int skcipher_request_set_sync_tfm (struct skcipher_request*,TYPE_1__*) ;

__attribute__((used)) static int rxkad_encrypt_response(struct rxrpc_connection *conn,
      struct rxkad_response *resp,
      const struct rxkad_key *s2)
{
 struct skcipher_request *req;
 struct rxrpc_crypt iv;
 struct scatterlist sg[1];

 req = skcipher_request_alloc(&conn->cipher->base, GFP_NOFS);
 if (!req)
  return -ENOMEM;


 memcpy(&iv, s2->session_key, sizeof(iv));

 sg_init_table(sg, 1);
 sg_set_buf(sg, &resp->encrypted, sizeof(resp->encrypted));
 skcipher_request_set_sync_tfm(req, conn->cipher);
 skcipher_request_set_callback(req, 0, ((void*)0), ((void*)0));
 skcipher_request_set_crypt(req, sg, sg, sizeof(resp->encrypted), iv.x);
 crypto_skcipher_encrypt(req);
 skcipher_request_free(req);
 return 0;
}
