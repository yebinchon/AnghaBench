
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char const* hname; } ;
struct TYPE_3__ {int dfa; } ;
struct aa_profile {scalar_t__ ns; TYPE_2__ base; TYPE_1__ file; } ;


 unsigned int aa_dfa_match (int ,unsigned int,char const*) ;
 unsigned int aa_dfa_match_len (int ,unsigned int,char*,int) ;
 char* aa_ns_name (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static inline unsigned int match_component(struct aa_profile *profile,
        struct aa_profile *tp,
        bool stack, unsigned int state)
{
 const char *ns_name;

 if (stack)
  state = aa_dfa_match(profile->file.dfa, state, "&");
 if (profile->ns == tp->ns)
  return aa_dfa_match(profile->file.dfa, state, tp->base.hname);


 ns_name = aa_ns_name(profile->ns, tp->ns, 1);
 state = aa_dfa_match_len(profile->file.dfa, state, ":", 1);
 state = aa_dfa_match(profile->file.dfa, state, ns_name);
 state = aa_dfa_match_len(profile->file.dfa, state, ":", 1);
 return aa_dfa_match(profile->file.dfa, state, tp->base.hname);
}
