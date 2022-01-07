
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;


 unsigned long long dlm_mig_cookie ;
 int dlm_mig_cookie_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static u64 dlm_get_next_mig_cookie(void)
{
 u64 c;
 spin_lock(&dlm_mig_cookie_lock);
 c = dlm_mig_cookie;
 if (dlm_mig_cookie == (~0ULL))
  dlm_mig_cookie = 1;
 else
  dlm_mig_cookie++;
 spin_unlock(&dlm_mig_cookie_lock);
 return c;
}
