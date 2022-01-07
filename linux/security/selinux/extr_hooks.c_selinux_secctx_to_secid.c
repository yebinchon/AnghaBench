
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GFP_KERNEL ;
 int security_context_to_sid (int *,char const*,int ,int *,int ) ;
 int selinux_state ;

__attribute__((used)) static int selinux_secctx_to_secid(const char *secdata, u32 seclen, u32 *secid)
{
 return security_context_to_sid(&selinux_state, secdata, seclen,
           secid, GFP_KERNEL);
}
