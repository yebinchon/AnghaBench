
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static __attribute__((noreturn))
void format(void)
{
 fprintf(stderr,
  "Usage: scripts/sign-file [-dp] <hash algo> <key> <x509> <module> [<dest>]\n");
 fprintf(stderr,
  "       scripts/sign-file -s <raw sig> <hash algo> <x509> <module> [<dest>]\n");
 exit(2);
}
