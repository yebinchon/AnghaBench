
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tls_sw_context_rx {char control; } ;
struct tls_prot_info {int prepend_size; size_t tag_size; scalar_t__ version; size_t tail_size; scalar_t__ iv_size; } ;
struct tls_context {struct tls_prot_info prot_info; } ;
struct strparser {int sk; } ;
struct strp_msg {scalar_t__ offset; } ;
struct sk_buff {scalar_t__ len; } ;
typedef int header ;
struct TYPE_2__ {scalar_t__ seq; } ;


 int EBADMSG ;
 int EINVAL ;
 int EMSGSIZE ;
 int MAX_IV_SIZE ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 char TLS_1_2_VERSION_MAJOR ;
 char TLS_1_2_VERSION_MINOR ;
 scalar_t__ TLS_1_3_VERSION ;
 int TLS_HEADER_SIZE ;
 size_t TLS_MAX_PAYLOAD_SIZE ;
 scalar_t__ WARN_ON (int) ;
 int skb_copy_bits (struct sk_buff*,scalar_t__,char*,int) ;
 struct strp_msg* strp_msg (struct sk_buff*) ;
 int tls_device_rx_resync_new_rec (int ,int,scalar_t__) ;
 int tls_err_abort (int ,int) ;
 struct tls_context* tls_get_ctx (int ) ;
 struct tls_sw_context_rx* tls_sw_ctx_rx (struct tls_context*) ;

__attribute__((used)) static int tls_read_size(struct strparser *strp, struct sk_buff *skb)
{
 struct tls_context *tls_ctx = tls_get_ctx(strp->sk);
 struct tls_sw_context_rx *ctx = tls_sw_ctx_rx(tls_ctx);
 struct tls_prot_info *prot = &tls_ctx->prot_info;
 char header[TLS_HEADER_SIZE + MAX_IV_SIZE];
 struct strp_msg *rxm = strp_msg(skb);
 size_t cipher_overhead;
 size_t data_len = 0;
 int ret;


 if (rxm->offset + prot->prepend_size > skb->len)
  return 0;


 if (WARN_ON(prot->prepend_size > sizeof(header))) {
  ret = -EINVAL;
  goto read_failure;
 }


 ret = skb_copy_bits(skb, rxm->offset, header, prot->prepend_size);

 if (ret < 0)
  goto read_failure;

 ctx->control = header[0];

 data_len = ((header[4] & 0xFF) | (header[3] << 8));

 cipher_overhead = prot->tag_size;
 if (prot->version != TLS_1_3_VERSION)
  cipher_overhead += prot->iv_size;

 if (data_len > TLS_MAX_PAYLOAD_SIZE + cipher_overhead +
     prot->tail_size) {
  ret = -EMSGSIZE;
  goto read_failure;
 }
 if (data_len < cipher_overhead) {
  ret = -EBADMSG;
  goto read_failure;
 }


 if (header[1] != TLS_1_2_VERSION_MINOR ||
     header[2] != TLS_1_2_VERSION_MAJOR) {
  ret = -EINVAL;
  goto read_failure;
 }

 tls_device_rx_resync_new_rec(strp->sk, data_len + TLS_HEADER_SIZE,
         TCP_SKB_CB(skb)->seq + rxm->offset);
 return data_len + TLS_HEADER_SIZE;

read_failure:
 tls_err_abort(strp->sk, ret);

 return ret;
}
