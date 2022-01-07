
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int set ;
typedef int cpu_set_t ;


 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int PTRACE_TRACEME ;
 int SIGSTOP ;
 int _exit (int) ;
 int errno ;
 int ksft_print_msg (char*,int ) ;
 scalar_t__ ptrace (int ,int ,int *,int *) ;
 scalar_t__ raise (int ) ;
 scalar_t__ sched_setaffinity (int ,int,int *) ;
 int strerror (int ) ;

void child(int cpu)
{
 cpu_set_t set;

 CPU_ZERO(&set);
 CPU_SET(cpu, &set);
 if (sched_setaffinity(0, sizeof(set), &set) != 0) {
  ksft_print_msg("sched_setaffinity() failed: %s\n",
   strerror(errno));
  _exit(1);
 }

 if (ptrace(PTRACE_TRACEME, 0, ((void*)0), ((void*)0)) != 0) {
  ksft_print_msg("ptrace(PTRACE_TRACEME) failed: %s\n",
   strerror(errno));
  _exit(1);
 }

 if (raise(SIGSTOP) != 0) {
  ksft_print_msg("raise(SIGSTOP) failed: %s\n", strerror(errno));
  _exit(1);
 }

 _exit(0);
}
