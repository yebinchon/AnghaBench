
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nfc_llc {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* rcv_from_drv ) (struct nfc_llc*,struct sk_buff*) ;} ;


 int stub1 (struct nfc_llc*,struct sk_buff*) ;

void nfc_llc_rcv_from_drv(struct nfc_llc *llc, struct sk_buff *skb)
{
 llc->ops->rcv_from_drv(llc, skb);
}
