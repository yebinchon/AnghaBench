
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_opt_ctx_t {int argc; char** argv; } ;
struct option {char const short_name; scalar_t__ long_name; scalar_t__ help; } ;


 int * strcasestr (scalar_t__,char const*) ;
 scalar_t__ strcmp (scalar_t__,char const*) ;

__attribute__((used)) static bool option__in_argv(const struct option *opt, const struct parse_opt_ctx_t *ctx)
{
 int i;

 for (i = 1; i < ctx->argc; ++i) {
  const char *arg = ctx->argv[i];

  if (arg[0] != '-') {
   if (arg[1] == '\0') {
    if (arg[0] == opt->short_name)
     return 1;
    continue;
   }

   if (opt->long_name && strcmp(opt->long_name, arg) == 0)
    return 1;

   if (opt->help && strcasestr(opt->help, arg) != ((void*)0))
    return 1;

   continue;
  }

  if (arg[1] == opt->short_name ||
      (arg[1] == '-' && opt->long_name && strcmp(opt->long_name, arg + 2) == 0))
   return 1;
 }

 return 0;
}
