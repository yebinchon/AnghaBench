
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {scalar_t__ type; char const short_name; char* long_name; } ;


 scalar_t__ OPTION_END ;
 int PARSE_OPT_HELP ;
 int fprintf (int ,char*,char*,...) ;
 int fputc (char,int ) ;
 int print_option_help (struct option const*,int ) ;
 int stderr ;
 scalar_t__ strstarts (char*,char const*) ;

int parse_options_usage(const char * const *usagestr,
   const struct option *opts,
   const char *optstr, bool short_opt)
{
 if (!usagestr)
  goto opt;

 fprintf(stderr, "\n Usage: %s\n", *usagestr++);
 while (*usagestr && **usagestr)
  fprintf(stderr, "    or: %s\n", *usagestr++);
 while (*usagestr) {
  fprintf(stderr, "%s%s\n",
    **usagestr ? "    " : "",
    *usagestr);
  usagestr++;
 }
 fputc('\n', stderr);

opt:
 for ( ; opts->type != OPTION_END; opts++) {
  if (short_opt) {
   if (opts->short_name == *optstr) {
    print_option_help(opts, 0);
    break;
   }
   continue;
  }

  if (opts->long_name == ((void*)0))
   continue;

  if (strstarts(opts->long_name, optstr))
   print_option_help(opts, 0);
  if (strstarts("no-", optstr) &&
      strstarts(opts->long_name, optstr + 3))
   print_option_help(opts, 0);
 }

 return PARSE_OPT_HELP;
}
