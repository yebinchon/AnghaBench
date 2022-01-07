
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aa_profile {int dummy; } ;
struct aa_perms {int dummy; } ;
struct aa_label {int dummy; } ;


 struct aa_perms allperms ;
 int label_components_match (struct aa_profile*,struct aa_label*,unsigned int,int,int ,struct aa_perms*) ;
 int label_compound_match (struct aa_profile*,struct aa_label*,unsigned int,int,int ,struct aa_perms*) ;

int aa_label_match(struct aa_profile *profile, struct aa_label *label,
     unsigned int state, bool subns, u32 request,
     struct aa_perms *perms)
{
 int error = label_compound_match(profile, label, state, subns, request,
      perms);
 if (!error)
  return error;

 *perms = allperms;
 return label_components_match(profile, label, state, subns, request,
          perms);
}
