
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_opt_ctx_t {int argc; } ;
struct option {scalar_t__ type; } ;


 scalar_t__ OPTION_END ;
 scalar_t__ OPTION_GROUP ;
 int PARSE_OPT_HELP ;
 char* error_buf ;
 int fprintf (int ,char*,char*,...) ;
 int fputc (char,int ) ;
 int free (struct option*) ;
 int option__in_argv (struct option const*,struct parse_opt_ctx_t*) ;
 struct option* options__order (struct option const*) ;
 int print_option_help (struct option const*,int) ;
 int setup_pager () ;
 int stderr ;
 int zfree (char**) ;

__attribute__((used)) static int usage_with_options_internal(const char * const *usagestr,
           const struct option *opts, int full,
           struct parse_opt_ctx_t *ctx)
{
 struct option *ordered;

 if (!usagestr)
  return PARSE_OPT_HELP;

 setup_pager();

 if (error_buf) {
  fprintf(stderr, "  Error: %s\n", error_buf);
  zfree(&error_buf);
 }

 fprintf(stderr, "\n Usage: %s\n", *usagestr++);
 while (*usagestr && **usagestr)
  fprintf(stderr, "    or: %s\n", *usagestr++);
 while (*usagestr) {
  fprintf(stderr, "%s%s\n",
    **usagestr ? "    " : "",
    *usagestr);
  usagestr++;
 }

 if (opts->type != OPTION_GROUP)
  fputc('\n', stderr);

 ordered = options__order(opts);
 if (ordered)
  opts = ordered;

 for ( ; opts->type != OPTION_END; opts++) {
  if (ctx && ctx->argc > 1 && !option__in_argv(opts, ctx))
   continue;
  print_option_help(opts, full);
 }

 fputc('\n', stderr);

 free(ordered);

 return PARSE_OPT_HELP;
}
