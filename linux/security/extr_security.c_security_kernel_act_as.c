
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cred {int dummy; } ;


 int call_int_hook (int ,int ,struct cred*,int ) ;
 int kernel_act_as ;

int security_kernel_act_as(struct cred *new, u32 secid)
{
 return call_int_hook(kernel_act_as, 0, new, secid);
}
