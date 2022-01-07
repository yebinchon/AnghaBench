
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {int dummy; } ;


 int ETH_P_8021Q ;
 int TC_ACT_OK ;
 int TESTVLAN ;
 int bpf_htons (int ) ;
 int bpf_skb_vlan_push (struct __sk_buff*,int ,int ) ;

int _tc_progA(struct __sk_buff *ctx)
{
 bpf_skb_vlan_push(ctx, bpf_htons(ETH_P_8021Q), TESTVLAN);

 return TC_ACT_OK;
}
