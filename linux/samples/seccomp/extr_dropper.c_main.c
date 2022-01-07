
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUDIT_ARCH_I386 ;
 int AUDIT_ARCH_X86_64 ;
 int execv (char*,char**) ;
 int fprintf (int ,char*,int,int) ;
 scalar_t__ install_filter (int ,int ,int ) ;
 int printf (char*) ;
 int stderr ;
 int strtol (char*,int *,int ) ;

int main(int argc, char **argv)
{
 if (argc < 5) {
  fprintf(stderr, "Usage:\n"
   "dropper <syscall_nr> <arch> <errno> <prog> [<args>]\n"
   "Hint:	AUDIT_ARCH_I386: 0x%X\n"
   "	AUDIT_ARCH_X86_64: 0x%X\n"
   "\n", AUDIT_ARCH_I386, AUDIT_ARCH_X86_64);
  return 1;
 }
 if (install_filter(strtol(argv[1], ((void*)0), 0), strtol(argv[2], ((void*)0), 0),
      strtol(argv[3], ((void*)0), 0)))
  return 1;
 execv(argv[4], &argv[4]);
 printf("Failed to execv\n");
 return 255;
}
