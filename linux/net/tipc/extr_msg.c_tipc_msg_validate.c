
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_msg {int dummy; } ;
struct sk_buff {int truesize; int len; } ;
struct TYPE_2__ {int validated; } ;


 int BUF_HEADROOM ;
 int GFP_ATOMIC ;
 int MAX_H_SIZE ;
 int MIN_H_SIZE ;
 int TIPC_MAX_USER_MSG_SIZE ;
 TYPE_1__* TIPC_SKB_CB (struct sk_buff*) ;
 scalar_t__ TIPC_VERSION ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int buf_roundup_len (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int msg_hdr_sz (struct tipc_msg*) ;
 int msg_size (struct tipc_msg*) ;
 scalar_t__ msg_version (struct tipc_msg*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

bool tipc_msg_validate(struct sk_buff **_skb)
{
 struct sk_buff *skb = *_skb;
 struct tipc_msg *hdr;
 int msz, hsz;


 if (unlikely(skb->truesize / buf_roundup_len(skb) >= 4)) {
  skb = skb_copy_expand(skb, BUF_HEADROOM, 0, GFP_ATOMIC);
  if (!skb)
   return 0;
  kfree_skb(*_skb);
  *_skb = skb;
 }

 if (unlikely(TIPC_SKB_CB(skb)->validated))
  return 1;
 if (unlikely(!pskb_may_pull(skb, MIN_H_SIZE)))
  return 0;

 hsz = msg_hdr_sz(buf_msg(skb));
 if (unlikely(hsz < MIN_H_SIZE) || (hsz > MAX_H_SIZE))
  return 0;
 if (unlikely(!pskb_may_pull(skb, hsz)))
  return 0;

 hdr = buf_msg(skb);
 if (unlikely(msg_version(hdr) != TIPC_VERSION))
  return 0;

 msz = msg_size(hdr);
 if (unlikely(msz < hsz))
  return 0;
 if (unlikely((msz - hsz) > TIPC_MAX_USER_MSG_SIZE))
  return 0;
 if (unlikely(skb->len < msz))
  return 0;

 TIPC_SKB_CB(skb)->validated = 1;
 return 1;
}
