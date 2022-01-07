
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct selinux_state {int dummy; } ;


 int security_sid_to_context_core (struct selinux_state*,int ,char**,int *,int,int ) ;

int security_sid_to_context_force(struct selinux_state *state, u32 sid,
      char **scontext, u32 *scontext_len)
{
 return security_sid_to_context_core(state, sid, scontext,
         scontext_len, 1, 0);
}
