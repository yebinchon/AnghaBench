
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_perms {int xindex; int quiet; int audit; int allow; } ;
struct aa_dfa {int dummy; } ;


 int dfa_user_allow (struct aa_dfa*,unsigned int) ;
 int dfa_user_audit (struct aa_dfa*,unsigned int) ;
 int dfa_user_quiet (struct aa_dfa*,unsigned int) ;
 int dfa_user_xindex (struct aa_dfa*,unsigned int) ;

__attribute__((used)) static struct aa_perms compute_mnt_perms(struct aa_dfa *dfa,
        unsigned int state)
{
 struct aa_perms perms = {
  .allow = dfa_user_allow(dfa, state),
  .audit = dfa_user_audit(dfa, state),
  .quiet = dfa_user_quiet(dfa, state),
  .xindex = dfa_user_xindex(dfa, state),
 };

 return perms;
}
