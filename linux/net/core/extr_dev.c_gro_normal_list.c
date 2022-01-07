
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {scalar_t__ rx_count; int rx_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int netif_receive_skb_list_internal (int *) ;

__attribute__((used)) static void gro_normal_list(struct napi_struct *napi)
{
 if (!napi->rx_count)
  return;
 netif_receive_skb_list_internal(&napi->rx_list);
 INIT_LIST_HEAD(&napi->rx_list);
 napi->rx_count = 0;
}
