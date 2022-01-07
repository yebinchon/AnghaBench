
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; int len; } ;
struct nfc_digital_dev {struct sk_buff* chaining_skb; struct digital_data_exch* data_exch; int remote_payload_max; } ;
struct digital_dep_req_res {int pfb; } ;
struct digital_data_exch {int dummy; } ;


 int DIGITAL_NFC_DEP_PFB_MI_BIT ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 struct sk_buff* digital_skb_alloc (struct nfc_digital_dev*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_put_data (struct sk_buff*,int ,int ) ;

__attribute__((used)) static struct sk_buff *
digital_send_dep_data_prep(struct nfc_digital_dev *ddev, struct sk_buff *skb,
      struct digital_dep_req_res *dep_req_res,
      struct digital_data_exch *data_exch)
{
 struct sk_buff *new_skb;

 if (skb->len > ddev->remote_payload_max) {
  dep_req_res->pfb |= DIGITAL_NFC_DEP_PFB_MI_BIT;

  new_skb = digital_skb_alloc(ddev, ddev->remote_payload_max);
  if (!new_skb) {
   kfree_skb(ddev->chaining_skb);
   ddev->chaining_skb = ((void*)0);

   return ERR_PTR(-ENOMEM);
  }

  skb_put_data(new_skb, skb->data, ddev->remote_payload_max);
  skb_pull(skb, ddev->remote_payload_max);

  ddev->chaining_skb = skb;
  ddev->data_exch = data_exch;
 } else {
  ddev->chaining_skb = ((void*)0);
  new_skb = skb;
 }

 return new_skb;
}
