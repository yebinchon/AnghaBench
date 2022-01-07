
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct skcipher_request {int dummy; } ;
struct sk_buff {int dummy; } ;
struct scatterlist {int dummy; } ;
struct TYPE_3__ {int seq; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct rxrpc_crypt {int x; } ;
struct rxrpc_call {int call_id; TYPE_2__* conn; } ;
struct rxkad_level1_hdr {int data_size; } ;
typedef int iv ;
typedef int hdr ;
struct TYPE_4__ {int cipher; } ;


 int _enter (char*) ;
 int _leave (char*) ;
 int crypto_skcipher_encrypt (struct skcipher_request*) ;
 int htonl (int) ;
 int memcpy (void*,struct rxkad_level1_hdr*,int) ;
 int memset (struct rxrpc_crypt*,int ,int) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 int sg_init_one (struct scatterlist*,void*,int) ;
 int skcipher_request_set_callback (struct skcipher_request*,int ,int *,int *) ;
 int skcipher_request_set_crypt (struct skcipher_request*,struct scatterlist*,struct scatterlist*,int,int ) ;
 int skcipher_request_set_sync_tfm (struct skcipher_request*,int ) ;
 int skcipher_request_zero (struct skcipher_request*) ;

__attribute__((used)) static int rxkad_secure_packet_auth(const struct rxrpc_call *call,
        struct sk_buff *skb,
        u32 data_size,
        void *sechdr,
        struct skcipher_request *req)
{
 struct rxrpc_skb_priv *sp = rxrpc_skb(skb);
 struct rxkad_level1_hdr hdr;
 struct rxrpc_crypt iv;
 struct scatterlist sg;
 u16 check;

 _enter("");

 check = sp->hdr.seq ^ call->call_id;
 data_size |= (u32)check << 16;

 hdr.data_size = htonl(data_size);
 memcpy(sechdr, &hdr, sizeof(hdr));


 memset(&iv, 0, sizeof(iv));

 sg_init_one(&sg, sechdr, 8);
 skcipher_request_set_sync_tfm(req, call->conn->cipher);
 skcipher_request_set_callback(req, 0, ((void*)0), ((void*)0));
 skcipher_request_set_crypt(req, &sg, &sg, 8, iv.x);
 crypto_skcipher_encrypt(req);
 skcipher_request_zero(req);

 _leave(" = 0");
 return 0;
}
