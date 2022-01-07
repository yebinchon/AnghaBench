
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_opt_ctx_t {char* opt; int argc; char** argv; } ;
struct option {int flags; scalar_t__ defval; } ;


 int PARSE_OPT_LASTARG_DEFAULT ;
 int opterror (struct option const*,char*,int) ;

__attribute__((used)) static int get_arg(struct parse_opt_ctx_t *p, const struct option *opt,
     int flags, const char **arg)
{
 const char *res;

 if (p->opt) {
  res = p->opt;
  p->opt = ((void*)0);
 } else if ((opt->flags & PARSE_OPT_LASTARG_DEFAULT) && (p->argc == 1 ||
      **(p->argv + 1) == '-')) {
  res = (const char *)opt->defval;
 } else if (p->argc > 1) {
  p->argc--;
  res = *++p->argv;
 } else
  return opterror(opt, "requires a value", flags);
 if (arg)
  *arg = res;
 return 0;
}
