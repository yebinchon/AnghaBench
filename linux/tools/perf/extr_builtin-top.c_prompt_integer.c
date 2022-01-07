
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int free (char*) ;
 scalar_t__ getline (char**,size_t*,int ) ;
 int isdigit (char) ;
 char* malloc (int ) ;
 int stdin ;
 int stdout ;
 char* strchr (char*,char) ;
 int strtoul (char*,int *,int) ;

__attribute__((used)) static void prompt_integer(int *target, const char *msg)
{
 char *buf = malloc(0), *p;
 size_t dummy = 0;
 int tmp;

 fprintf(stdout, "\n%s: ", msg);
 if (getline(&buf, &dummy, stdin) < 0)
  return;

 p = strchr(buf, '\n');
 if (p)
  *p = 0;

 p = buf;
 while(*p) {
  if (!isdigit(*p))
   goto out_free;
  p++;
 }
 tmp = strtoul(buf, ((void*)0), 10);
 *target = tmp;
out_free:
 free(buf);
}
