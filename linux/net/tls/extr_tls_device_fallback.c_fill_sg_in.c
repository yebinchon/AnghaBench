
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct tls_record_info {int * frags; } ;
struct tls_offload_context_tx {int lock; } ;
struct sk_buff {int len; } ;
struct scatterlist {int length; } ;
typedef int skb_frag_t ;
typedef int s32 ;
struct TYPE_2__ {int seq; } ;


 int EINVAL ;
 int __skb_frag_ref (int *) ;
 int ntohl (int ) ;
 int sg_set_page (struct scatterlist*,int ,scalar_t__,int ) ;
 int skb_frag_off (int *) ;
 int skb_frag_page (int *) ;
 scalar_t__ skb_frag_size (int *) ;
 scalar_t__ skb_to_sgvec (struct sk_buff*,struct scatterlist*,int,int) ;
 int skb_transport_offset (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* tcp_hdr (struct sk_buff*) ;
 int tcp_hdrlen (struct sk_buff*) ;
 struct tls_record_info* tls_get_record (struct tls_offload_context_tx*,int,int *) ;
 int tls_record_is_start_marker (struct tls_record_info*) ;
 int tls_record_start_seq (struct tls_record_info*) ;

__attribute__((used)) static int fill_sg_in(struct scatterlist *sg_in,
        struct sk_buff *skb,
        struct tls_offload_context_tx *ctx,
        u64 *rcd_sn,
        s32 *sync_size,
        int *resync_sgs)
{
 int tcp_payload_offset = skb_transport_offset(skb) + tcp_hdrlen(skb);
 int payload_len = skb->len - tcp_payload_offset;
 u32 tcp_seq = ntohl(tcp_hdr(skb)->seq);
 struct tls_record_info *record;
 unsigned long flags;
 int remaining;
 int i;

 spin_lock_irqsave(&ctx->lock, flags);
 record = tls_get_record(ctx, tcp_seq, rcd_sn);
 if (!record) {
  spin_unlock_irqrestore(&ctx->lock, flags);
  return -EINVAL;
 }

 *sync_size = tcp_seq - tls_record_start_seq(record);
 if (*sync_size < 0) {
  int is_start_marker = tls_record_is_start_marker(record);

  spin_unlock_irqrestore(&ctx->lock, flags);
  if (!is_start_marker)
   *sync_size = 0;
  return -EINVAL;
 }

 remaining = *sync_size;
 for (i = 0; remaining > 0; i++) {
  skb_frag_t *frag = &record->frags[i];

  __skb_frag_ref(frag);
  sg_set_page(sg_in + i, skb_frag_page(frag),
       skb_frag_size(frag), skb_frag_off(frag));

  remaining -= skb_frag_size(frag);

  if (remaining < 0)
   sg_in[i].length += remaining;
 }
 *resync_sgs = i;

 spin_unlock_irqrestore(&ctx->lock, flags);
 if (skb_to_sgvec(skb, &sg_in[i], tcp_payload_offset, payload_len) < 0)
  return -EINVAL;

 return 0;
}
