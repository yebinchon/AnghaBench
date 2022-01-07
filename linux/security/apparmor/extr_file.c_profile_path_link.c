
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct path_cond {int uid; } ;
struct path {int dummy; } ;
struct TYPE_2__ {unsigned int start; int dfa; } ;
struct aa_profile {TYPE_1__ file; int path_flags; int label; } ;
struct aa_perms {int allow; int xindex; int kill; int quiet; int audit; } ;


 int AA_AUDIT_FILE_MASK ;
 int AA_LINK_SUBSET ;
 int AA_MAY_LINK ;
 int EACCES ;
 int MAY_EXEC ;
 int OP_LINK ;
 int aa_audit_file (struct aa_profile*,struct aa_perms*,int ,int,char const*,char const*,int *,int ,char const*,int) ;
 unsigned int aa_dfa_null_transition (int ,unsigned int) ;
 unsigned int aa_str_perms (int ,unsigned int,char const*,struct path_cond*,struct aa_perms*) ;
 int path_name (int ,int *,struct path const*,int ,char*,char const**,struct path_cond*,int) ;
 int xindex_is_subset (int ,int ) ;

__attribute__((used)) static int profile_path_link(struct aa_profile *profile,
        const struct path *link, char *buffer,
        const struct path *target, char *buffer2,
        struct path_cond *cond)
{
 const char *lname, *tname = ((void*)0);
 struct aa_perms lperms = {}, perms;
 const char *info = ((void*)0);
 u32 request = AA_MAY_LINK;
 unsigned int state;
 int error;

 error = path_name(OP_LINK, &profile->label, link, profile->path_flags,
     buffer, &lname, cond, AA_MAY_LINK);
 if (error)
  goto audit;


 error = path_name(OP_LINK, &profile->label, target, profile->path_flags,
     buffer2, &tname, cond, AA_MAY_LINK);
 if (error)
  goto audit;

 error = -EACCES;

 state = aa_str_perms(profile->file.dfa, profile->file.start, lname,
        cond, &lperms);

 if (!(lperms.allow & AA_MAY_LINK))
  goto audit;


 state = aa_dfa_null_transition(profile->file.dfa, state);
 aa_str_perms(profile->file.dfa, state, tname, cond, &perms);




 lperms.audit = perms.audit;
 lperms.quiet = perms.quiet;
 lperms.kill = perms.kill;

 if (!(perms.allow & AA_MAY_LINK)) {
  info = "target restricted";
  lperms = perms;
  goto audit;
 }


 if (!(perms.allow & AA_LINK_SUBSET))
  goto done_tests;




 aa_str_perms(profile->file.dfa, profile->file.start, tname, cond,
       &perms);


 request = lperms.allow & ~AA_MAY_LINK;
 lperms.allow &= perms.allow | AA_MAY_LINK;

 request |= AA_AUDIT_FILE_MASK & (lperms.allow & ~perms.allow);
 if (request & ~lperms.allow) {
  goto audit;
 } else if ((lperms.allow & MAY_EXEC) &&
     !xindex_is_subset(lperms.xindex, perms.xindex)) {
  lperms.allow &= ~MAY_EXEC;
  request |= MAY_EXEC;
  info = "link not subset of target";
  goto audit;
 }

done_tests:
 error = 0;

audit:
 return aa_audit_file(profile, &lperms, OP_LINK, request, lname, tname,
        ((void*)0), cond->uid, info, error);
}
