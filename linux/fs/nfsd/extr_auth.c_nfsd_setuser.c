
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct group_info* cr_group_info; int cr_gid; int cr_uid; } ;
struct svc_rqst {TYPE_1__ rq_cred; } ;
struct svc_export {int ex_anon_gid; int ex_anon_uid; } ;
struct group_info {int ngroups; int * gid; } ;
struct cred {int cap_permitted; int cap_effective; int fsuid; int fsgid; } ;


 int ENOMEM ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 int INVALID_GID ;
 int INVALID_UID ;
 int NFSEXP_ALLSQUASH ;
 int NFSEXP_ROOTSQUASH ;
 int abort_creds (struct cred*) ;
 int cap_drop_nfsd_set (int ) ;
 int cap_raise_nfsd_set (int ,int ) ;
 int current_real_cred () ;
 int get_cred (int ) ;
 struct group_info* get_group_info (struct group_info*) ;
 scalar_t__ gid_eq (int ,int ) ;
 struct group_info* groups_alloc (int) ;
 int groups_sort (struct group_info*) ;
 int nfsexp_flags (struct svc_rqst*,struct svc_export*) ;
 struct cred* override_creds (struct cred*) ;
 struct cred* prepare_creds () ;
 int put_cred (struct cred*) ;
 int put_group_info (struct group_info*) ;
 int revert_creds (int ) ;
 int set_groups (struct cred*,struct group_info*) ;
 scalar_t__ uid_eq (int ,int ) ;
 int validate_process_creds () ;

int nfsd_setuser(struct svc_rqst *rqstp, struct svc_export *exp)
{
 struct group_info *rqgi;
 struct group_info *gi;
 struct cred *new;
 int i;
 int flags = nfsexp_flags(rqstp, exp);

 validate_process_creds();


 revert_creds(get_cred(current_real_cred()));
 new = prepare_creds();
 if (!new)
  return -ENOMEM;

 new->fsuid = rqstp->rq_cred.cr_uid;
 new->fsgid = rqstp->rq_cred.cr_gid;

 rqgi = rqstp->rq_cred.cr_group_info;

 if (flags & NFSEXP_ALLSQUASH) {
  new->fsuid = exp->ex_anon_uid;
  new->fsgid = exp->ex_anon_gid;
  gi = groups_alloc(0);
  if (!gi)
   goto oom;
 } else if (flags & NFSEXP_ROOTSQUASH) {
  if (uid_eq(new->fsuid, GLOBAL_ROOT_UID))
   new->fsuid = exp->ex_anon_uid;
  if (gid_eq(new->fsgid, GLOBAL_ROOT_GID))
   new->fsgid = exp->ex_anon_gid;

  gi = groups_alloc(rqgi->ngroups);
  if (!gi)
   goto oom;

  for (i = 0; i < rqgi->ngroups; i++) {
   if (gid_eq(GLOBAL_ROOT_GID, rqgi->gid[i]))
    gi->gid[i] = exp->ex_anon_gid;
   else
    gi->gid[i] = rqgi->gid[i];
  }


  groups_sort(gi);
 } else {
  gi = get_group_info(rqgi);
 }

 if (uid_eq(new->fsuid, INVALID_UID))
  new->fsuid = exp->ex_anon_uid;
 if (gid_eq(new->fsgid, INVALID_GID))
  new->fsgid = exp->ex_anon_gid;

 set_groups(new, gi);
 put_group_info(gi);

 if (!uid_eq(new->fsuid, GLOBAL_ROOT_UID))
  new->cap_effective = cap_drop_nfsd_set(new->cap_effective);
 else
  new->cap_effective = cap_raise_nfsd_set(new->cap_effective,
       new->cap_permitted);
 validate_process_creds();
 put_cred(override_creds(new));
 put_cred(new);
 validate_process_creds();
 return 0;

oom:
 abort_creds(new);
 return -ENOMEM;
}
