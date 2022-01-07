
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct selinux_state {int dummy; } ;
typedef int gfp_t ;


 int security_context_to_sid_core (struct selinux_state*,char const*,int ,int *,int ,int ,int) ;

int security_context_to_sid_default(struct selinux_state *state,
        const char *scontext, u32 scontext_len,
        u32 *sid, u32 def_sid, gfp_t gfp_flags)
{
 return security_context_to_sid_core(state, scontext, scontext_len,
         sid, def_sid, gfp_flags, 1);
}
