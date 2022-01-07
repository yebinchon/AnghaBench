
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int Dwfl ;


 int dwfl_pid (int *) ;

__attribute__((used)) static pid_t next_thread(Dwfl *dwfl, void *arg, void **thread_argp)
{

 if (*thread_argp != ((void*)0))
  return 0;

 *thread_argp = arg;
 return dwfl_pid(dwfl);
}
