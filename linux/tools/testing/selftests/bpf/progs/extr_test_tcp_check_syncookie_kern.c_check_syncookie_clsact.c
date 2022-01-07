
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {scalar_t__ data_end; scalar_t__ data; } ;


 int TC_ACT_OK ;
 int check_syncookie (struct __sk_buff*,void*,void*) ;

int check_syncookie_clsact(struct __sk_buff *skb)
{
 check_syncookie(skb, (void *)(long)skb->data,
   (void *)(long)skb->data_end);
 return TC_ACT_OK;
}
