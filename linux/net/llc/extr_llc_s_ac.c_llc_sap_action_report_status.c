
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct llc_sap {int dummy; } ;



int llc_sap_action_report_status(struct llc_sap *sap, struct sk_buff *skb)
{
 return 0;
}
