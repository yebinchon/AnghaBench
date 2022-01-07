
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cred {int dummy; } ;


 int security_kernel_act_as (struct cred*,int ) ;

int set_security_override(struct cred *new, u32 secid)
{
 return security_kernel_act_as(new, secid);
}
