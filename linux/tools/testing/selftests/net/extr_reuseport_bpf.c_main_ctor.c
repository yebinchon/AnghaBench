
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rlimit {scalar_t__ rlim_cur; scalar_t__ rlim_max; } ;
struct TYPE_3__ {scalar_t__ rlim_cur; scalar_t__ rlim_max; } ;


 int RLIMIT_MEMLOCK ;
 scalar_t__ RLIM_INFINITY ;
 int getrlimit (int ,TYPE_1__*) ;
 TYPE_1__ rlim_old ;
 int setrlimit (int ,struct rlimit*) ;

__attribute__((used)) static __attribute__((constructor)) void main_ctor(void)
{
 getrlimit(RLIMIT_MEMLOCK, &rlim_old);

 if (rlim_old.rlim_cur != RLIM_INFINITY) {
  struct rlimit rlim_new;

  rlim_new.rlim_cur = rlim_old.rlim_cur + (1UL << 20);
  rlim_new.rlim_max = rlim_old.rlim_max + (1UL << 20);
  setrlimit(RLIMIT_MEMLOCK, &rlim_new);
 }
}
