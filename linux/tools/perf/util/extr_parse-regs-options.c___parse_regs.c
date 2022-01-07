
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sample_reg {char* name; int mask; } ;
struct option {scalar_t__ value; } ;


 int arch__intr_reg_mask () ;
 int arch__user_reg_mask () ;
 int fprintf (int ,char*,...) ;
 int fputc (char,int ) ;
 int free (char*) ;
 struct sample_reg* sample_reg_masks ;
 int stderr ;
 int strcasecmp (char*,char*) ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 char* strdup (char const*) ;
 int ui__warning (char*,char*,char*) ;

__attribute__((used)) static int
__parse_regs(const struct option *opt, const char *str, int unset, bool intr)
{
 uint64_t *mode = (uint64_t *)opt->value;
 const struct sample_reg *r;
 char *s, *os = ((void*)0), *p;
 int ret = -1;
 uint64_t mask;

 if (unset)
  return 0;




 if (*mode)
  return -1;

 if (intr)
  mask = arch__intr_reg_mask();
 else
  mask = arch__user_reg_mask();


 if (str) {

  s = os = strdup(str);
  if (!s)
   return -1;

  for (;;) {
   p = strchr(s, ',');
   if (p)
    *p = '\0';

   if (!strcmp(s, "?")) {
    fprintf(stderr, "available registers: ");
    for (r = sample_reg_masks; r->name; r++) {
     if (r->mask & mask)
      fprintf(stderr, "%s ", r->name);
    }
    fputc('\n', stderr);

    return -1;
   }
   for (r = sample_reg_masks; r->name; r++) {
    if ((r->mask & mask) && !strcasecmp(s, r->name))
     break;
   }
   if (!r->name) {
    ui__warning("Unknown register \"%s\", check man page or run \"perf record %s?\"\n",
         s, intr ? "-I" : "--user-regs=");
    goto error;
   }

   *mode |= r->mask;

   if (!p)
    break;

   s = p + 1;
  }
 }
 ret = 0;


 if (*mode == 0)
  *mode = mask;
error:
 free(os);
 return ret;
}
