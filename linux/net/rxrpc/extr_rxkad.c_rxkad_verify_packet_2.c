
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


typedef int u32 ;
typedef int u16 ;
struct skcipher_request {int dummy; } ;
struct sk_buff {int len; } ;
struct scatterlist {int dummy; } ;
struct rxrpc_key_token {TYPE_4__* kad; } ;
struct rxrpc_crypt {int x; } ;
struct rxrpc_call {int call_id; TYPE_5__* conn; } ;
struct rxkad_level2_hdr {int data_size; } ;
typedef int sechdr ;
typedef int rxrpc_seq_t ;
typedef int iv ;
struct TYPE_12__ {int nr_frags; } ;
struct TYPE_9__ {TYPE_2__* key; } ;
struct TYPE_11__ {int cipher; TYPE_3__ params; } ;
struct TYPE_10__ {int session_key; } ;
struct TYPE_7__ {struct rxrpc_key_token** data; } ;
struct TYPE_8__ {TYPE_1__ payload; } ;


 int ENOMEM ;
 int EPROTO ;
 int GFP_NOIO ;
 int RXKADDATALEN ;
 int RXKADSEALEDINCON ;
 int _enter (char*,int ) ;
 int _leave (char*,...) ;
 int crypto_skcipher_decrypt (struct skcipher_request*) ;
 int kfree (struct scatterlist*) ;
 struct scatterlist* kmalloc_array (int,int,int ) ;
 int memcpy (struct rxrpc_crypt*,int ,int) ;
 int ntohl (int ) ;
 int rxrpc_abort_eproto (struct rxrpc_call*,struct sk_buff*,char*,char*,int ) ;
 int rxrpc_send_abort_packet (struct rxrpc_call*) ;
 int sg_init_table (struct scatterlist*,int) ;
 scalar_t__ skb_copy_bits (struct sk_buff*,unsigned int,struct rxkad_level2_hdr*,int) ;
 TYPE_6__* skb_shinfo (struct sk_buff*) ;
 int skb_to_sgvec (struct sk_buff*,struct scatterlist*,unsigned int,unsigned int) ;
 int skcipher_request_set_callback (struct skcipher_request*,int ,int *,int *) ;
 int skcipher_request_set_crypt (struct skcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,int ) ;
 int skcipher_request_set_sync_tfm (struct skcipher_request*,int ) ;
 int skcipher_request_zero (struct skcipher_request*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int rxkad_verify_packet_2(struct rxrpc_call *call, struct sk_buff *skb,
     unsigned int offset, unsigned int len,
     rxrpc_seq_t seq,
     struct skcipher_request *req)
{
 const struct rxrpc_key_token *token;
 struct rxkad_level2_hdr sechdr;
 struct rxrpc_crypt iv;
 struct scatterlist _sg[4], *sg;
 bool aborted;
 u32 data_size, buf;
 u16 check;
 int nsg, ret;

 _enter(",{%d}", skb->len);

 if (len < 8) {
  aborted = rxrpc_abort_eproto(call, skb, "rxkad_2_hdr", "V2H",
          RXKADSEALEDINCON);
  goto protocol_error;
 }




 sg = _sg;
 nsg = skb_shinfo(skb)->nr_frags;
 if (nsg <= 4) {
  nsg = 4;
 } else {
  sg = kmalloc_array(nsg, sizeof(*sg), GFP_NOIO);
  if (!sg)
   goto nomem;
 }

 sg_init_table(sg, nsg);
 ret = skb_to_sgvec(skb, sg, offset, len);
 if (unlikely(ret < 0)) {
  if (sg != _sg)
   kfree(sg);
  return ret;
 }


 token = call->conn->params.key->payload.data[0];
 memcpy(&iv, token->kad->session_key, sizeof(iv));

 skcipher_request_set_sync_tfm(req, call->conn->cipher);
 skcipher_request_set_callback(req, 0, ((void*)0), ((void*)0));
 skcipher_request_set_crypt(req, sg, sg, len, iv.x);
 crypto_skcipher_decrypt(req);
 skcipher_request_zero(req);
 if (sg != _sg)
  kfree(sg);


 if (skb_copy_bits(skb, offset, &sechdr, sizeof(sechdr)) < 0) {
  aborted = rxrpc_abort_eproto(call, skb, "rxkad_2_len", "XV2",
          RXKADDATALEN);
  goto protocol_error;
 }
 offset += sizeof(sechdr);
 len -= sizeof(sechdr);

 buf = ntohl(sechdr.data_size);
 data_size = buf & 0xffff;

 check = buf >> 16;
 check ^= seq ^ call->call_id;
 check &= 0xffff;
 if (check != 0) {
  aborted = rxrpc_abort_eproto(call, skb, "rxkad_2_check", "V2C",
          RXKADSEALEDINCON);
  goto protocol_error;
 }

 if (data_size > len) {
  aborted = rxrpc_abort_eproto(call, skb, "rxkad_2_datalen", "V2L",
          RXKADDATALEN);
  goto protocol_error;
 }

 _leave(" = 0 [dlen=%x]", data_size);
 return 0;

protocol_error:
 if (aborted)
  rxrpc_send_abort_packet(call);
 return -EPROTO;

nomem:
 _leave(" = -ENOMEM");
 return -ENOMEM;
}
