
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 char* strndup (char const*,size_t) ;

char *xstrndup(const char *s, size_t n)
{
 char *p;

 p = strndup(s, n);
 if (p)
  return p;
 fprintf(stderr, "Out of memory.\n");
 exit(1);
}
