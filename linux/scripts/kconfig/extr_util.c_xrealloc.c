
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 void* realloc (void*,size_t) ;
 int stderr ;

void *xrealloc(void *p, size_t size)
{
 p = realloc(p, size);
 if (p)
  return p;
 fprintf(stderr, "Out of memory.\n");
 exit(1);
}
