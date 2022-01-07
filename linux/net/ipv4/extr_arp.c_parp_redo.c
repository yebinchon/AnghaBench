
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;


 int arp_process (int ,int *,struct sk_buff*) ;
 int dev_net (int ) ;

__attribute__((used)) static void parp_redo(struct sk_buff *skb)
{
 arp_process(dev_net(skb->dev), ((void*)0), skb);
}
