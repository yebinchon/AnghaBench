
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ieee802154_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* xmit_sync ) (int *,struct sk_buff*) ;} ;


 int might_sleep () ;
 int stub1 (int *,struct sk_buff*) ;

__attribute__((used)) static inline int
drv_xmit_sync(struct ieee802154_local *local, struct sk_buff *skb)
{
 might_sleep();

 return local->ops->xmit_sync(&local->hw, skb);
}
