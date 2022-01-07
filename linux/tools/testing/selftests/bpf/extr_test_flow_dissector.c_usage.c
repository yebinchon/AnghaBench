
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void __attribute__((noreturn)) usage(const char *filepath)
{
 fprintf(stderr, "Usage: %s [-e gre|gue|bare|none] [-i 4|6] [-l len] "
   "[-O 4|6] [-o 4|6] [-n num] [-t secs] [-R] [-T] "
   "[-s <osrc> [-d <odst>] [-S <isrc>] [-D <idst>] "
   "[-x <otos>] [-X <itos>] [-f <isport>] [-F]\n",
  filepath);
 exit(1);
}
