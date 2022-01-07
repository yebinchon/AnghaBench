
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct l2cap_chan {int dummy; } ;


 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct sk_buff* bt_skb_alloc (unsigned long,int ) ;

__attribute__((used)) static struct sk_buff *a2mp_chan_alloc_skb_cb(struct l2cap_chan *chan,
           unsigned long hdr_len,
           unsigned long len, int nb)
{
 struct sk_buff *skb;

 skb = bt_skb_alloc(hdr_len + len, GFP_KERNEL);
 if (!skb)
  return ERR_PTR(-ENOMEM);

 return skb;
}
