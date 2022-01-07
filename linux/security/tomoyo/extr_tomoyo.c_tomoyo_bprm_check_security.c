
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tomoyo_task {int domain_info; int old_domain_info; } ;
struct linux_binprm {TYPE_1__* file; } ;
struct TYPE_2__ {int f_path; } ;


 int O_RDONLY ;
 int current ;
 int tomoyo_check_open_permission (int ,int *,int ) ;
 int tomoyo_find_next_domain (struct linux_binprm*) ;
 int tomoyo_read_lock () ;
 int tomoyo_read_unlock (int const) ;
 struct tomoyo_task* tomoyo_task (int ) ;

__attribute__((used)) static int tomoyo_bprm_check_security(struct linux_binprm *bprm)
{
 struct tomoyo_task *s = tomoyo_task(current);





 if (!s->old_domain_info) {
  const int idx = tomoyo_read_lock();
  const int err = tomoyo_find_next_domain(bprm);

  tomoyo_read_unlock(idx);
  return err;
 }



 return tomoyo_check_open_permission(s->domain_info,
         &bprm->file->f_path, O_RDONLY);
}
