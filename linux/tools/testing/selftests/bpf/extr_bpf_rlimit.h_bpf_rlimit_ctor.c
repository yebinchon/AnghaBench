
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {scalar_t__ rlim_max; scalar_t__ rlim_cur; } ;


 int RLIMIT_MEMLOCK ;
 scalar_t__ RLIM_INFINITY ;
 int getrlimit (int ,struct rlimit*) ;
 int perror (char*) ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;

__attribute__((used)) static __attribute__((constructor)) void bpf_rlimit_ctor(void)
{
 struct rlimit rlim_old, rlim_new = {
  .rlim_cur = RLIM_INFINITY,
  .rlim_max = RLIM_INFINITY,
 };

 getrlimit(RLIMIT_MEMLOCK, &rlim_old);







 if (setrlimit(RLIMIT_MEMLOCK, &rlim_new) < 0) {
  perror("Unable to lift memlock rlimit");



  rlim_new.rlim_cur = rlim_old.rlim_cur + (1UL << 20);
  rlim_new.rlim_max = rlim_old.rlim_max + (1UL << 20);
  setrlimit(RLIMIT_MEMLOCK, &rlim_new);
 }
}
