
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int PTRACE_TRACEME ;
 int SIGSTOP ;
 int _exit (int) ;
 int errno ;
 int ksft_print_msg (char*,int ) ;
 scalar_t__ ptrace (int ,int ,int *,int *) ;
 scalar_t__ raise (int ) ;
 int strerror (int ) ;
 int* var ;

__attribute__((used)) static void child(int size, int wr)
{
 volatile uint8_t *addr = &var[32 + wr];

 if (ptrace(PTRACE_TRACEME, 0, ((void*)0), ((void*)0)) != 0) {
  ksft_print_msg(
   "ptrace(PTRACE_TRACEME) failed: %s\n",
   strerror(errno));
  _exit(1);
 }

 if (raise(SIGSTOP) != 0) {
  ksft_print_msg(
   "raise(SIGSTOP) failed: %s\n", strerror(errno));
  _exit(1);
 }

 if ((uintptr_t) addr % size) {
  ksft_print_msg(
    "Wrong address write for the given size: %s\n",
    strerror(errno));
  _exit(1);
 }

 switch (size) {
 case 1:
  *addr = 47;
  break;
 case 2:
  *(uint16_t *)addr = 47;
  break;
 case 4:
  *(uint32_t *)addr = 47;
  break;
 case 8:
  *(uint64_t *)addr = 47;
  break;
 case 16:
  __asm__ volatile ("stp x29, x30, %0" : "=m" (addr[0]));
  break;
 case 32:
  __asm__ volatile ("stp q29, q30, %0" : "=m" (addr[0]));
  break;
 }

 _exit(0);
}
