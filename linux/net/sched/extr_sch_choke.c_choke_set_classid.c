
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int classid; } ;


 TYPE_1__* choke_skb_cb (struct sk_buff*) ;

__attribute__((used)) static inline void choke_set_classid(struct sk_buff *skb, u16 classid)
{
 choke_skb_cb(skb)->classid = classid;
}
