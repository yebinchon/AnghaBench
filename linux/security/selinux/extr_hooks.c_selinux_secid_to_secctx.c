
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int security_sid_to_context (int *,int ,char**,int *) ;
 int selinux_state ;

__attribute__((used)) static int selinux_secid_to_secctx(u32 secid, char **secdata, u32 *seclen)
{
 return security_sid_to_context(&selinux_state, secid,
           secdata, seclen);
}
