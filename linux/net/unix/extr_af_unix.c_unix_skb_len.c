
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {unsigned int len; } ;
struct TYPE_2__ {unsigned int consumed; } ;


 TYPE_1__ UNIXCB (struct sk_buff const*) ;

__attribute__((used)) static unsigned int unix_skb_len(const struct sk_buff *skb)
{
 return skb->len - UNIXCB(skb).consumed;
}
