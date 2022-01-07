
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* can_aggregate_in_amsdu ) (int *,struct sk_buff*,struct sk_buff*) ;} ;


 int stub1 (int *,struct sk_buff*,struct sk_buff*) ;

__attribute__((used)) static inline int drv_can_aggregate_in_amsdu(struct ieee80211_local *local,
          struct sk_buff *head,
          struct sk_buff *skb)
{
 if (!local->ops->can_aggregate_in_amsdu)
  return 1;

 return local->ops->can_aggregate_in_amsdu(&local->hw, head, skb);
}
