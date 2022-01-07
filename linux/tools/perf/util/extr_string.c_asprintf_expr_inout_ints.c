
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* malloc (size_t) ;
 scalar_t__ scnprintf (char*,size_t,char*,char const*,...) ;

char *asprintf_expr_inout_ints(const char *var, bool in, size_t nints, int *ints)
{






 size_t size = nints * 28 + 1;
 size_t i, printed = 0;
 char *expr = malloc(size);

 if (expr) {
  const char *or_and = "||", *eq_neq = "==";
  char *e = expr;

  if (!in) {
   or_and = "&&";
   eq_neq = "!=";
  }

  for (i = 0; i < nints; ++i) {
   if (printed == size)
    goto out_err_overflow;

   if (i > 0)
    printed += scnprintf(e + printed, size - printed, " %s ", or_and);
   printed += scnprintf(e + printed, size - printed,
          "%s %s %d", var, eq_neq, ints[i]);
  }
 }

 return expr;

out_err_overflow:
 free(expr);
 return ((void*)0);
}
