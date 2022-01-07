
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int dummy; } ;
typedef int kuid_t ;


 scalar_t__ __cap_full (int ,struct cred*) ;
 scalar_t__ __cap_gained (int ,struct cred*,struct cred const*) ;
 scalar_t__ __cap_grew (int ,int ,struct cred*) ;
 scalar_t__ __is_eff (int ,struct cred*) ;
 scalar_t__ __is_real (int ,struct cred*) ;
 int __is_setuid (struct cred*,struct cred const*) ;
 scalar_t__ __is_suid (int ,struct cred*) ;
 int ambient ;
 int effective ;
 int permitted ;
 scalar_t__ root_privileged () ;

__attribute__((used)) static inline bool nonroot_raised_pE(struct cred *new, const struct cred *old,
         kuid_t root, bool has_fcap)
{
 bool ret = 0;

 if ((__cap_grew(effective, ambient, new) &&
      !(__cap_full(effective, new) &&
        (__is_eff(root, new) || __is_real(root, new)) &&
        root_privileged())) ||
     (root_privileged() &&
      __is_suid(root, new) &&
      !__cap_full(effective, new)) ||
     (!__is_setuid(new, old) &&
      ((has_fcap &&
        __cap_gained(permitted, new, old)) ||
       __cap_gained(ambient, new, old))))

  ret = 1;

 return ret;
}
