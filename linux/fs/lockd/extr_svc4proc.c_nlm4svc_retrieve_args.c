
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct TYPE_3__ {int fl_owner; int * fl_lmops; int fl_pid; int fl_file; } ;
struct nlm_lock {TYPE_1__ fl; scalar_t__ svid; int fh; int len; int caller; } ;
struct nlm_host {int dummy; } ;
struct nlm_file {int f_file; } ;
struct nlm_args {scalar_t__ monitor; struct nlm_lock lock; } ;
typedef int pid_t ;
typedef scalar_t__ __be32 ;
struct TYPE_4__ {int tgid; } ;


 TYPE_2__* current ;
 scalar_t__ nlm_lck_denied_nolocks ;
 scalar_t__ nlm_lookup_file (struct svc_rqst*,struct nlm_file**,int *) ;
 int nlmsvc_lock_operations ;
 int nlmsvc_locks_init_private (TYPE_1__*,struct nlm_host*,int ) ;
 struct nlm_host* nlmsvc_lookup_host (struct svc_rqst*,int ,int ) ;
 int nlmsvc_ops ;
 int nlmsvc_release_host (struct nlm_host*) ;
 scalar_t__ nsm_monitor (struct nlm_host*) ;

__attribute__((used)) static __be32
nlm4svc_retrieve_args(struct svc_rqst *rqstp, struct nlm_args *argp,
   struct nlm_host **hostp, struct nlm_file **filp)
{
 struct nlm_host *host = ((void*)0);
 struct nlm_file *file = ((void*)0);
 struct nlm_lock *lock = &argp->lock;
 __be32 error = 0;


 if (!nlmsvc_ops)
  return nlm_lck_denied_nolocks;


 if (!(host = nlmsvc_lookup_host(rqstp, lock->caller, lock->len))
  || (argp->monitor && nsm_monitor(host) < 0))
  goto no_locks;
 *hostp = host;


 if (filp != ((void*)0)) {
  if ((error = nlm_lookup_file(rqstp, &file, &lock->fh)) != 0)
   goto no_locks;
  *filp = file;


  lock->fl.fl_file = file->f_file;
  lock->fl.fl_pid = current->tgid;
  lock->fl.fl_lmops = &nlmsvc_lock_operations;
  nlmsvc_locks_init_private(&lock->fl, host, (pid_t)lock->svid);
  if (!lock->fl.fl_owner) {

   nlmsvc_release_host(host);
   return nlm_lck_denied_nolocks;
  }
 }

 return 0;

no_locks:
 nlmsvc_release_host(host);
  if (error)
  return error;
 return nlm_lck_denied_nolocks;
}
