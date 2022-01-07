
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct linux_binprm {scalar_t__ interp; scalar_t__ filename; scalar_t__ file; scalar_t__ cred; } ;
struct TYPE_4__ {TYPE_1__* signal; } ;
struct TYPE_3__ {int cred_guard_mutex; } ;


 int abort_creds (scalar_t__) ;
 int allow_write_access (scalar_t__) ;
 TYPE_2__* current ;
 int fput (scalar_t__) ;
 int free_arg_pages (struct linux_binprm*) ;
 int kfree (struct linux_binprm*) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void free_bprm(struct linux_binprm *bprm)
{
 free_arg_pages(bprm);
 if (bprm->cred) {
  mutex_unlock(&current->signal->cred_guard_mutex);
  abort_creds(bprm->cred);
 }
 if (bprm->file) {
  allow_write_access(bprm->file);
  fput(bprm->file);
 }

 if (bprm->interp != bprm->filename)
  kfree(bprm->interp);
 kfree(bprm);
}
