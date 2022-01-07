
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct linux_binprm {int cred; int file; } ;


 int BPRM_CHECK ;
 int CREDS_CHECK ;
 int MAY_EXEC ;
 int current ;
 int current_cred () ;
 int process_measurement (int ,int ,int ,int *,int ,int ,int ) ;
 int security_cred_getsecid (int ,int *) ;
 int security_task_getsecid (int ,int *) ;

int ima_bprm_check(struct linux_binprm *bprm)
{
 int ret;
 u32 secid;

 security_task_getsecid(current, &secid);
 ret = process_measurement(bprm->file, current_cred(), secid, ((void*)0), 0,
      MAY_EXEC, BPRM_CHECK);
 if (ret)
  return ret;

 security_cred_getsecid(bprm->cred, &secid);
 return process_measurement(bprm->file, bprm->cred, secid, ((void*)0), 0,
       MAY_EXEC, CREDS_CHECK);
}
