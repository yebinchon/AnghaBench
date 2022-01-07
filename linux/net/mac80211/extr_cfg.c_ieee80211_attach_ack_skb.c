
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {int dummy; } ;
struct ieee80211_local {int ack_status_lock; int ack_status_frames; } ;
typedef int gfp_t ;
struct TYPE_3__ {int cookie; } ;
struct TYPE_4__ {int ack_frame_id; TYPE_1__ ack; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 TYPE_2__* IEEE80211_SKB_CB (struct sk_buff*) ;
 int idr_alloc (int *,struct sk_buff*,int,int,int ) ;
 int ieee80211_mgmt_tx_cookie (struct ieee80211_local*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_copy (struct sk_buff*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ieee80211_attach_ack_skb(struct ieee80211_local *local, struct sk_buff *skb,
        u64 *cookie, gfp_t gfp)
{
 unsigned long spin_flags;
 struct sk_buff *ack_skb;
 int id;

 ack_skb = skb_copy(skb, gfp);
 if (!ack_skb)
  return -ENOMEM;

 spin_lock_irqsave(&local->ack_status_lock, spin_flags);
 id = idr_alloc(&local->ack_status_frames, ack_skb,
         1, 0x10000, GFP_ATOMIC);
 spin_unlock_irqrestore(&local->ack_status_lock, spin_flags);

 if (id < 0) {
  kfree_skb(ack_skb);
  return -ENOMEM;
 }

 IEEE80211_SKB_CB(skb)->ack_frame_id = id;

 *cookie = ieee80211_mgmt_tx_cookie(local);
 IEEE80211_SKB_CB(ack_skb)->ack.cookie = *cookie;

 return 0;
}
