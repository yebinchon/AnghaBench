
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct skcipher_request {int dummy; } ;
struct sk_buff {int dummy; } ;
struct scatterlist {int dummy; } ;
struct rxrpc_crypt {int x; } ;
struct rxrpc_call {int call_id; TYPE_1__* conn; } ;
struct rxkad_level1_hdr {int data_size; } ;
typedef int sechdr ;
typedef int rxrpc_seq_t ;
typedef int iv ;
struct TYPE_2__ {int cipher; } ;


 int ARRAY_SIZE (struct scatterlist*) ;
 int EPROTO ;
 int RXKADDATALEN ;
 int RXKADSEALEDINCON ;
 int _enter (char*) ;
 int _leave (char*,int) ;
 int crypto_skcipher_decrypt (struct skcipher_request*) ;
 int memset (struct rxrpc_crypt*,int ,int) ;
 int ntohl (int ) ;
 int rxrpc_abort_eproto (struct rxrpc_call*,struct sk_buff*,char*,char*,int ) ;
 int rxrpc_send_abort_packet (struct rxrpc_call*) ;
 int sg_init_table (struct scatterlist*,int ) ;
 scalar_t__ skb_copy_bits (struct sk_buff*,unsigned int,struct rxkad_level1_hdr*,int) ;
 int skb_to_sgvec (struct sk_buff*,struct scatterlist*,unsigned int,int) ;
 int skcipher_request_set_callback (struct skcipher_request*,int ,int *,int *) ;
 int skcipher_request_set_crypt (struct skcipher_request*,struct scatterlist*,struct scatterlist*,int,int ) ;
 int skcipher_request_set_sync_tfm (struct skcipher_request*,int ) ;
 int skcipher_request_zero (struct skcipher_request*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int rxkad_verify_packet_1(struct rxrpc_call *call, struct sk_buff *skb,
     unsigned int offset, unsigned int len,
     rxrpc_seq_t seq,
     struct skcipher_request *req)
{
 struct rxkad_level1_hdr sechdr;
 struct rxrpc_crypt iv;
 struct scatterlist sg[16];
 bool aborted;
 u32 data_size, buf;
 u16 check;
 int ret;

 _enter("");

 if (len < 8) {
  aborted = rxrpc_abort_eproto(call, skb, "rxkad_1_hdr", "V1H",
        RXKADSEALEDINCON);
  goto protocol_error;
 }




 sg_init_table(sg, ARRAY_SIZE(sg));
 ret = skb_to_sgvec(skb, sg, offset, 8);
 if (unlikely(ret < 0))
  return ret;


 memset(&iv, 0, sizeof(iv));

 skcipher_request_set_sync_tfm(req, call->conn->cipher);
 skcipher_request_set_callback(req, 0, ((void*)0), ((void*)0));
 skcipher_request_set_crypt(req, sg, sg, 8, iv.x);
 crypto_skcipher_decrypt(req);
 skcipher_request_zero(req);


 if (skb_copy_bits(skb, offset, &sechdr, sizeof(sechdr)) < 0) {
  aborted = rxrpc_abort_eproto(call, skb, "rxkad_1_len", "XV1",
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
  aborted = rxrpc_abort_eproto(call, skb, "rxkad_1_check", "V1C",
          RXKADSEALEDINCON);
  goto protocol_error;
 }

 if (data_size > len) {
  aborted = rxrpc_abort_eproto(call, skb, "rxkad_1_datalen", "V1L",
          RXKADDATALEN);
  goto protocol_error;
 }

 _leave(" = 0 [dlen=%x]", data_size);
 return 0;

protocol_error:
 if (aborted)
  rxrpc_send_abort_packet(call);
 return -EPROTO;
}
