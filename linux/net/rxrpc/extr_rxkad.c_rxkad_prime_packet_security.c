
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct rxrpc_key_token {TYPE_4__* kad; } ;
struct rxrpc_crypt {int x; } ;
struct TYPE_11__ {int cid; int epoch; } ;
struct TYPE_9__ {TYPE_2__* key; } ;
struct rxrpc_connection {struct rxrpc_crypt csum_iv; TYPE_6__* cipher; int security_ix; TYPE_5__ proto; TYPE_3__ params; } ;
typedef int iv ;
typedef scalar_t__ __be32 ;
struct TYPE_12__ {int base; } ;
struct TYPE_10__ {scalar_t__* session_key; } ;
struct TYPE_7__ {struct rxrpc_key_token** data; } ;
struct TYPE_8__ {TYPE_1__ payload; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GFP_NOFS ;
 int _enter (char*) ;
 int _leave (char*) ;
 int crypto_skcipher_encrypt (struct skcipher_request*) ;
 scalar_t__ htonl (int ) ;
 int kfree (scalar_t__*) ;
 scalar_t__* kmalloc (size_t,int ) ;
 int memcpy (struct rxrpc_crypt*,scalar_t__*,int) ;
 int sg_init_one (struct scatterlist*,scalar_t__*,size_t) ;
 struct skcipher_request* skcipher_request_alloc (int *,int ) ;
 int skcipher_request_free (struct skcipher_request*) ;
 int skcipher_request_set_callback (struct skcipher_request*,int ,int *,int *) ;
 int skcipher_request_set_crypt (struct skcipher_request*,struct scatterlist*,struct scatterlist*,size_t,int ) ;
 int skcipher_request_set_sync_tfm (struct skcipher_request*,TYPE_6__*) ;

__attribute__((used)) static int rxkad_prime_packet_security(struct rxrpc_connection *conn)
{
 struct skcipher_request *req;
 struct rxrpc_key_token *token;
 struct scatterlist sg;
 struct rxrpc_crypt iv;
 __be32 *tmpbuf;
 size_t tmpsize = 4 * sizeof(__be32);

 _enter("");

 if (!conn->params.key)
  return 0;

 tmpbuf = kmalloc(tmpsize, GFP_KERNEL);
 if (!tmpbuf)
  return -ENOMEM;

 req = skcipher_request_alloc(&conn->cipher->base, GFP_NOFS);
 if (!req) {
  kfree(tmpbuf);
  return -ENOMEM;
 }

 token = conn->params.key->payload.data[0];
 memcpy(&iv, token->kad->session_key, sizeof(iv));

 tmpbuf[0] = htonl(conn->proto.epoch);
 tmpbuf[1] = htonl(conn->proto.cid);
 tmpbuf[2] = 0;
 tmpbuf[3] = htonl(conn->security_ix);

 sg_init_one(&sg, tmpbuf, tmpsize);
 skcipher_request_set_sync_tfm(req, conn->cipher);
 skcipher_request_set_callback(req, 0, ((void*)0), ((void*)0));
 skcipher_request_set_crypt(req, &sg, &sg, tmpsize, iv.x);
 crypto_skcipher_encrypt(req);
 skcipher_request_free(req);

 memcpy(&conn->csum_iv, tmpbuf + 2, sizeof(conn->csum_iv));
 kfree(tmpbuf);
 _leave(" = 0");
 return 0;
}
