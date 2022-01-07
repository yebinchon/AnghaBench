
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfrm_state {int dummy; } ;
struct xfrm_offload {int flags; } ;
struct sk_buff {scalar_t__ data; } ;
struct sec_path {int len; struct xfrm_state** xvec; } ;
struct crypto_async_request {struct sk_buff* data; } ;
struct TYPE_4__ {void* tmp; } ;
struct TYPE_3__ {struct xfrm_state* xfrm; } ;


 TYPE_2__* ESP_SKB_CB (struct sk_buff*) ;
 int LINUX_MIB_XFRMOUTSTATEPROTOERROR ;
 int XFRM_DEV_RESUME ;
 int XFRM_INC_STATS (int ,int ) ;
 int esp_ssg_unref (struct xfrm_state*,void*) ;
 int kfree (void*) ;
 int kfree_skb (struct sk_buff*) ;
 int secpath_reset (struct sk_buff*) ;
 TYPE_1__* skb_dst (struct sk_buff*) ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;
 int skb_push (struct sk_buff*,scalar_t__) ;
 struct sec_path* skb_sec_path (struct sk_buff*) ;
 int xfrm_dev_resume (struct sk_buff*) ;
 struct xfrm_offload* xfrm_offload (struct sk_buff*) ;
 int xfrm_output_resume (struct sk_buff*,int) ;
 int xs_net (struct xfrm_state*) ;

__attribute__((used)) static void esp_output_done(struct crypto_async_request *base, int err)
{
 struct sk_buff *skb = base->data;
 struct xfrm_offload *xo = xfrm_offload(skb);
 void *tmp;
 struct xfrm_state *x;

 if (xo && (xo->flags & XFRM_DEV_RESUME)) {
  struct sec_path *sp = skb_sec_path(skb);

  x = sp->xvec[sp->len - 1];
 } else {
  x = skb_dst(skb)->xfrm;
 }

 tmp = ESP_SKB_CB(skb)->tmp;
 esp_ssg_unref(x, tmp);
 kfree(tmp);

 if (xo && (xo->flags & XFRM_DEV_RESUME)) {
  if (err) {
   XFRM_INC_STATS(xs_net(x), LINUX_MIB_XFRMOUTSTATEPROTOERROR);
   kfree_skb(skb);
   return;
  }

  skb_push(skb, skb->data - skb_mac_header(skb));
  secpath_reset(skb);
  xfrm_dev_resume(skb);
 } else {
  xfrm_output_resume(skb, err);
 }
}
