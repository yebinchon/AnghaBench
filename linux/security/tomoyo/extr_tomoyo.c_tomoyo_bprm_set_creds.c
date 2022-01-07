
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_binprm {int filename; scalar_t__ called_set_creds; } ;


 int tomoyo_load_policy (int ) ;
 int tomoyo_policy_loaded ;

__attribute__((used)) static int tomoyo_bprm_set_creds(struct linux_binprm *bprm)
{




 if (bprm->called_set_creds)
  return 0;




 if (!tomoyo_policy_loaded)
  tomoyo_load_policy(bprm->filename);
 return 0;
}
