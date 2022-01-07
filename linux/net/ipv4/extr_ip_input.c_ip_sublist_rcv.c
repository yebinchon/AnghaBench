
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct list_head {int dummy; } ;


 int NFPROTO_IPV4 ;
 int NF_HOOK_LIST (int ,int ,struct net*,int *,struct list_head*,struct net_device*,int *,int ) ;
 int NF_INET_PRE_ROUTING ;
 int ip_list_rcv_finish (struct net*,int *,struct list_head*) ;
 int ip_rcv_finish ;

__attribute__((used)) static void ip_sublist_rcv(struct list_head *head, struct net_device *dev,
      struct net *net)
{
 NF_HOOK_LIST(NFPROTO_IPV4, NF_INET_PRE_ROUTING, net, ((void*)0),
       head, dev, ((void*)0), ip_rcv_finish);
 ip_list_rcv_finish(net, ((void*)0), head);
}
