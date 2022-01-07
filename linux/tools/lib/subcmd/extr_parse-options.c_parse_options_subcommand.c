
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse_opt_ctx_t {char** argv; int * opt; } ;
struct option {char const* const long_name; int type; } ;
struct TYPE_2__ {int exec_name; } ;


 int OPTION_END ;




 int astrcat (char**,char const* const) ;
 int astrcatf (char**,char*,int ,...) ;
 int error_buf ;
 int exit (int) ;
 int parse_options_end (struct parse_opt_ctx_t*) ;
 int parse_options_start (struct parse_opt_ctx_t*,int,char const**,int) ;
 int parse_options_step (struct parse_opt_ctx_t*,struct option const*,char const**) ;
 int printf (char*,char const* const) ;
 int putchar (char) ;
 TYPE_1__ subcmd_config ;
 int usage_with_options (char const**,struct option const*) ;

int parse_options_subcommand(int argc, const char **argv, const struct option *options,
   const char *const subcommands[], const char *usagestr[], int flags)
{
 struct parse_opt_ctx_t ctx;


 if (subcommands && !usagestr[0]) {
  char *buf = ((void*)0);

  astrcatf(&buf, "%s %s [<options>] {", subcmd_config.exec_name, argv[0]);

  for (int i = 0; subcommands[i]; i++) {
   if (i)
    astrcat(&buf, "|");
   astrcat(&buf, subcommands[i]);
  }
  astrcat(&buf, "}");

  usagestr[0] = buf;
 }

 parse_options_start(&ctx, argc, argv, flags);
 switch (parse_options_step(&ctx, options, usagestr)) {
 case 130:
  exit(129);
 case 131:
  break;
 case 129:
  while (options->type != OPTION_END) {
   if (options->long_name)
    printf("--%s ", options->long_name);
   options++;
  }
  putchar('\n');
  exit(130);
 case 128:
  if (subcommands) {
   for (int i = 0; subcommands[i]; i++)
    printf("%s ", subcommands[i]);
  }
  putchar('\n');
  exit(130);
 default:
  if (ctx.argv[0][1] == '-')
   astrcatf(&error_buf, "unknown option `%s'",
     ctx.argv[0] + 2);
  else
   astrcatf(&error_buf, "unknown switch `%c'", *ctx.opt);
  usage_with_options(usagestr, options);
 }

 return parse_options_end(&ctx);
}
