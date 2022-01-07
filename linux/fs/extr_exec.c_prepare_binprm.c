
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_binprm {int called_set_creds; int buf; int file; } ;
typedef int loff_t ;


 int BINPRM_BUF_SIZE ;
 int bprm_fill_uid (struct linux_binprm*) ;
 int kernel_read (int ,int ,int ,int *) ;
 int memset (int ,int ,int ) ;
 int security_bprm_set_creds (struct linux_binprm*) ;

int prepare_binprm(struct linux_binprm *bprm)
{
 int retval;
 loff_t pos = 0;

 bprm_fill_uid(bprm);


 retval = security_bprm_set_creds(bprm);
 if (retval)
  return retval;
 bprm->called_set_creds = 1;

 memset(bprm->buf, 0, BINPRM_BUF_SIZE);
 return kernel_read(bprm->file, bprm->buf, BINPRM_BUF_SIZE, &pos);
}
