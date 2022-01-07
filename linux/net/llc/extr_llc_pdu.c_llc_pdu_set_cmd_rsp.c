
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int ssap; } ;


 TYPE_1__* llc_pdu_un_hdr (struct sk_buff*) ;

void llc_pdu_set_cmd_rsp(struct sk_buff *skb, u8 pdu_type)
{
 llc_pdu_un_hdr(skb)->ssap |= pdu_type;
}
