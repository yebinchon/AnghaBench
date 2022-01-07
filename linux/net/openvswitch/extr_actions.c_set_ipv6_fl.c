
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ipv6hdr {int * flow_lbl; } ;


 int OVS_SET_MASKED (int ,int ,int ) ;

__attribute__((used)) static void set_ipv6_fl(struct ipv6hdr *nh, u32 fl, u32 mask)
{

 OVS_SET_MASKED(nh->flow_lbl[0], (u8)(fl >> 16), (u8)(mask >> 16));
 OVS_SET_MASKED(nh->flow_lbl[1], (u8)(fl >> 8), (u8)(mask >> 8));
 OVS_SET_MASKED(nh->flow_lbl[2], (u8)fl, (u8)mask);
}
