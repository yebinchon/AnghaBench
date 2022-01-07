
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 unsigned int BPF_PROG_RUN (int ,struct sk_buff const*) ;
 int ptp_insns ;

unsigned int ptp_classify_raw(const struct sk_buff *skb)
{
 return BPF_PROG_RUN(ptp_insns, skb);
}
