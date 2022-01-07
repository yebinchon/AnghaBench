
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* start; int dfa; } ;
struct aa_profile {TYPE_1__ policy; } ;


 unsigned char AA_CLASS_LAST ;
 unsigned int aa_dfa_match_len (int ,unsigned int,unsigned char*,int) ;

__attribute__((used)) static inline unsigned int PROFILE_MEDIATES(struct aa_profile *profile,
         unsigned char class)
{
 if (class <= AA_CLASS_LAST)
  return profile->policy.start[class];
 else
  return aa_dfa_match_len(profile->policy.dfa,
     profile->policy.start[0], &class, 1);
}
