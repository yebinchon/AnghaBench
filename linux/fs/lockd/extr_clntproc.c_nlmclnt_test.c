
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fl_pid; int fl_type; int fl_end; int fl_start; } ;
struct TYPE_5__ {TYPE_1__ fl; } ;
struct TYPE_6__ {int status; TYPE_2__ lock; } ;
struct nlm_rqst {TYPE_3__ a_res; } ;
struct file_lock {int fl_pid; int fl_type; int fl_end; int fl_start; int fl_file; } ;


 int F_UNLCK ;
 int NLMPROC_TEST ;
 int nfs_file_cred (int ) ;


 int nlm_stat_to_errno (int) ;
 int nlmclnt_call (int ,struct nlm_rqst*,int ) ;
 int nlmclnt_release_call (struct nlm_rqst*) ;

__attribute__((used)) static int
nlmclnt_test(struct nlm_rqst *req, struct file_lock *fl)
{
 int status;

 status = nlmclnt_call(nfs_file_cred(fl->fl_file), req, NLMPROC_TEST);
 if (status < 0)
  goto out;

 switch (req->a_res.status) {
  case 129:
   fl->fl_type = F_UNLCK;
   break;
  case 128:



   fl->fl_start = req->a_res.lock.fl.fl_start;
   fl->fl_end = req->a_res.lock.fl.fl_end;
   fl->fl_type = req->a_res.lock.fl.fl_type;
   fl->fl_pid = -req->a_res.lock.fl.fl_pid;
   break;
  default:
   status = nlm_stat_to_errno(req->a_res.status);
 }
out:
 nlmclnt_release_call(req);
 return status;
}
