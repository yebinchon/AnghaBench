
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct selinux_state {int dummy; } ;
typedef int gfp_t ;


 int security_context_to_sid (struct selinux_state*,char const*,int ,int *,int ) ;
 int strlen (char const*) ;

int security_context_str_to_sid(struct selinux_state *state,
    const char *scontext, u32 *sid, gfp_t gfp)
{
 return security_context_to_sid(state, scontext, strlen(scontext),
           sid, gfp);
}
