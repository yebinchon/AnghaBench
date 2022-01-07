
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int member_1; int member_0; } ;


 int RLIMIT_MEMLOCK ;
 int RLIM_INFINITY ;
 int setrlimit (int ,struct rlimit*) ;

void set_max_rlimit(void)
{
 struct rlimit rinf = { RLIM_INFINITY, RLIM_INFINITY };

 setrlimit(RLIMIT_MEMLOCK, &rinf);
}
