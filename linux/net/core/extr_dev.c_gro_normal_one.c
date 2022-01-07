
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int list; } ;
struct napi_struct {scalar_t__ rx_count; int rx_list; } ;


 scalar_t__ gro_normal_batch ;
 int gro_normal_list (struct napi_struct*) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void gro_normal_one(struct napi_struct *napi, struct sk_buff *skb)
{
 list_add_tail(&skb->list, &napi->rx_list);
 if (++napi->rx_count >= gro_normal_batch)
  gro_normal_list(napi);
}
