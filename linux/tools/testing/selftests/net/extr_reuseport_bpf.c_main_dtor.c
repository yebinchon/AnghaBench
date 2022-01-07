
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RLIMIT_MEMLOCK ;
 int rlim_old ;
 int setrlimit (int ,int *) ;

__attribute__((used)) static __attribute__((destructor)) void main_dtor(void)
{
 setrlimit(RLIMIT_MEMLOCK, &rlim_old);
}
