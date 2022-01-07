
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int features; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 int NETIF_F_HIGHDMA ;
 scalar_t__ PageHighMem (int ) ;
 int skb_frag_page (int *) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static int illegal_highdma(struct net_device *dev, struct sk_buff *skb)
{
 return 0;
}
