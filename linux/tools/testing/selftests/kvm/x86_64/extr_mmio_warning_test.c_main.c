
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KSFT_SKIP ;
 int NPROCESS ;
 int TEST_ASSERT (int,char*) ;
 int __WALL ;
 int exit (int) ;
 int fork () ;
 int get_warnings_count () ;
 int is_intel_cpu () ;
 int printf (char*) ;
 int test () ;
 scalar_t__ vm_is_unrestricted_guest (int *) ;
 int waitpid (int,int*,int ) ;

int main(void)
{
 int warnings_before, warnings_after;

 if (!is_intel_cpu()) {
  printf("Must be run on an Intel CPU, skipping test\n");
  exit(KSFT_SKIP);
 }

 if (vm_is_unrestricted_guest(((void*)0))) {
  printf("Unrestricted guest must be disabled, skipping test\n");
  exit(KSFT_SKIP);
 }

 warnings_before = get_warnings_count();

 for (int i = 0; i < NPROCESS; ++i) {
  int status;
  int pid = fork();

  if (pid < 0)
   exit(1);
  if (pid == 0) {
   test();
   exit(0);
  }
  while (waitpid(pid, &status, __WALL) != pid)
   ;
 }

 warnings_after = get_warnings_count();
 TEST_ASSERT(warnings_before == warnings_after,
     "Warnings found in kernel.  Run 'dmesg' to inspect them.");

 return 0;
}
