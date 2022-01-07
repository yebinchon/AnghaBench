
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u32 ;


 int WARN_ONCE (int,char*,char*,scalar_t__ const) ;
 scalar_t__ XDP_REDIRECT ;

void bpf_warn_invalid_xdp_action(u32 act)
{
 const u32 act_max = XDP_REDIRECT;

 WARN_ONCE(1, "%s XDP return value %u, expect packet loss!\n",
    act > act_max ? "Illegal" : "Driver unsupported",
    act);
}
