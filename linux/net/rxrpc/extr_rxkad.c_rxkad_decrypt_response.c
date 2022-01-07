
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct rxrpc_crypt {int x; int * n; } ;
struct rxrpc_connection {int dummy; } ;
struct rxkad_response {int encrypted; } ;
typedef int iv ;


 int BUG () ;
 int _enter (char*,int ,int ) ;
 int _leave (char*) ;
 int crypto_skcipher_decrypt (struct skcipher_request*) ;
 scalar_t__ crypto_sync_skcipher_setkey (int ,int ,int) ;
 int memcpy (struct rxrpc_crypt*,struct rxrpc_crypt const*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ntohl (int ) ;
 int rxkad_ci ;
 int rxkad_ci_mutex ;
 struct skcipher_request* rxkad_ci_req ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_buf (struct scatterlist*,int *,int) ;
 int skcipher_request_set_callback (struct skcipher_request*,int ,int *,int *) ;
 int skcipher_request_set_crypt (struct skcipher_request*,struct scatterlist*,struct scatterlist*,int,int ) ;
 int skcipher_request_set_sync_tfm (struct skcipher_request*,int ) ;
 int skcipher_request_zero (struct skcipher_request*) ;

__attribute__((used)) static void rxkad_decrypt_response(struct rxrpc_connection *conn,
       struct rxkad_response *resp,
       const struct rxrpc_crypt *session_key)
{
 struct skcipher_request *req = rxkad_ci_req;
 struct scatterlist sg[1];
 struct rxrpc_crypt iv;

 _enter(",,%08x%08x",
        ntohl(session_key->n[0]), ntohl(session_key->n[1]));

 mutex_lock(&rxkad_ci_mutex);
 if (crypto_sync_skcipher_setkey(rxkad_ci, session_key->x,
     sizeof(*session_key)) < 0)
  BUG();

 memcpy(&iv, session_key, sizeof(iv));

 sg_init_table(sg, 1);
 sg_set_buf(sg, &resp->encrypted, sizeof(resp->encrypted));
 skcipher_request_set_sync_tfm(req, rxkad_ci);
 skcipher_request_set_callback(req, 0, ((void*)0), ((void*)0));
 skcipher_request_set_crypt(req, sg, sg, sizeof(resp->encrypted), iv.x);
 crypto_skcipher_decrypt(req);
 skcipher_request_zero(req);

 mutex_unlock(&rxkad_ci_mutex);

 _leave("");
}
