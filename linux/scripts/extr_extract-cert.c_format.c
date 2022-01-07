
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
  "Usage: scripts/extract-cert <source> <dest>\n");
 exit(2);
}
