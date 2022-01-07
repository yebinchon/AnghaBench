
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fq_tin {int dummy; } ;
struct txq_info {struct fq_tin tin; } ;
struct sk_buff {int dummy; } ;
struct fq {int lock; } ;
struct ieee80211_local {struct fq fq; } ;


 int fq_flow_get_default_func ;
 int fq_flow_idx (struct fq*,struct sk_buff*) ;
 int fq_skb_free_func ;
 int fq_tin_enqueue (struct fq*,struct fq_tin*,int ,struct sk_buff*,int ,int ) ;
 int ieee80211_set_skb_enqueue_time (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ieee80211_txq_enqueue(struct ieee80211_local *local,
      struct txq_info *txqi,
      struct sk_buff *skb)
{
 struct fq *fq = &local->fq;
 struct fq_tin *tin = &txqi->tin;
 u32 flow_idx = fq_flow_idx(fq, skb);

 ieee80211_set_skb_enqueue_time(skb);

 spin_lock_bh(&fq->lock);
 fq_tin_enqueue(fq, tin, flow_idx, skb,
         fq_skb_free_func,
         fq_flow_get_default_func);
 spin_unlock_bh(&fq->lock);
}
