
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {scalar_t__ value; } ;
struct mem_mode {int mode; scalar_t__ name; } ;


 int MEM_OPERATION_LOAD ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 struct mem_mode* mem_modes ;
 int stderr ;
 int strcasecmp (char*,scalar_t__) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static int
parse_mem_ops(const struct option *opt, const char *str, int unset)
{
 int *mode = (int *)opt->value;
 const struct mem_mode *m;
 char *s, *os = ((void*)0), *p;
 int ret = -1;

 if (unset)
  return 0;


 if (str) {

  s = os = strdup(str);
  if (!s)
   return -1;


  *mode = 0;

  for (;;) {
   p = strchr(s, ',');
   if (p)
    *p = '\0';

   for (m = mem_modes; m->name; m++) {
    if (!strcasecmp(s, m->name))
     break;
   }
   if (!m->name) {
    fprintf(stderr, "unknown sampling op %s,"
         " check man page\n", s);
    goto error;
   }

   *mode |= m->mode;

   if (!p)
    break;

   s = p + 1;
  }
 }
 ret = 0;

 if (*mode == 0)
  *mode = MEM_OPERATION_LOAD;
error:
 free(os);
 return ret;
}
