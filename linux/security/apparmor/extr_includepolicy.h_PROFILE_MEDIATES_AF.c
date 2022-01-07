
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int dfa; } ;
struct aa_profile {TYPE_1__ policy; } ;
typedef int __be16 ;


 int AA_CLASS_NET ;
 unsigned int PROFILE_MEDIATES (struct aa_profile*,int ) ;
 unsigned int aa_dfa_match_len (int ,unsigned int,char*,int) ;
 int cpu_to_be16 (int ) ;

__attribute__((used)) static inline unsigned int PROFILE_MEDIATES_AF(struct aa_profile *profile,
            u16 AF) {
 unsigned int state = PROFILE_MEDIATES(profile, AA_CLASS_NET);
 __be16 be_af = cpu_to_be16(AF);

 if (!state)
  return 0;
 return aa_dfa_match_len(profile->policy.dfa, state, (char *) &be_af, 2);
}
