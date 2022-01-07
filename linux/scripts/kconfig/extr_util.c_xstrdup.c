
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 char* strdup (char const*) ;

char *xstrdup(const char *s)
{
 char *p;

 p = strdup(s);
 if (p)
  return p;
 fprintf(stderr, "Out of memory.\n");
 exit(1);
}
