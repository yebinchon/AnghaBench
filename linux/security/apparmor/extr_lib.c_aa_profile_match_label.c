
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * start; int dfa; } ;
struct aa_profile {TYPE_1__ policy; } ;
struct aa_perms {int dummy; } ;
struct aa_label {int dummy; } ;


 size_t AA_CLASS_LABEL ;
 unsigned int aa_dfa_next (int ,int ,int) ;
 int aa_label_match (struct aa_profile*,struct aa_label*,unsigned int,int,int ,struct aa_perms*) ;

void aa_profile_match_label(struct aa_profile *profile, struct aa_label *label,
       int type, u32 request, struct aa_perms *perms)
{

 unsigned int state;

 state = aa_dfa_next(profile->policy.dfa,
       profile->policy.start[AA_CLASS_LABEL],
       type);
 aa_label_match(profile, label, state, 0, request, perms);
}
