
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int frag_list; } ;


 int skb_drop_list (int *) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static inline void skb_drop_fraglist(struct sk_buff *skb)
{
 skb_drop_list(&skb_shinfo(skb)->frag_list);
}
