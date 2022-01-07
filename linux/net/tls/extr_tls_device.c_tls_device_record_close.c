
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_record_info {scalar_t__ len; int * frags; } ;
struct tls_prot_info {int tag_size; scalar_t__ overhead_size; int version; } ;
struct tls_context {struct tls_prot_info prot_info; } ;
struct sock {int sk_allocation; } ;
struct page_frag {int dummy; } ;


 int ENOMEM ;
 scalar_t__ likely (int ) ;
 int skb_frag_address (int *) ;
 int skb_page_frag_refill (int,struct page_frag*,int ) ;
 int tls_append_frag (struct tls_record_info*,struct page_frag*,int) ;
 int tls_fill_prepend (struct tls_context*,int ,scalar_t__,unsigned char,int ) ;

__attribute__((used)) static int tls_device_record_close(struct sock *sk,
       struct tls_context *ctx,
       struct tls_record_info *record,
       struct page_frag *pfrag,
       unsigned char record_type)
{
 struct tls_prot_info *prot = &ctx->prot_info;
 int ret;







 if (likely(skb_page_frag_refill(prot->tag_size, pfrag,
     sk->sk_allocation))) {
  ret = 0;
  tls_append_frag(record, pfrag, prot->tag_size);
 } else {
  ret = prot->tag_size;
  if (record->len <= prot->overhead_size)
   return -ENOMEM;
 }


 tls_fill_prepend(ctx, skb_frag_address(&record->frags[0]),
    record->len - prot->overhead_size,
    record_type, prot->version);
 return ret;
}
