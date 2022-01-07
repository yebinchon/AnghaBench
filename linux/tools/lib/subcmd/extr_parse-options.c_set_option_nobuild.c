
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char const* build_opt; int flags; } ;


 int PARSE_OPT_CANSKIP ;
 int PARSE_OPT_NOBUILD ;
 struct option* find_option (struct option*,int,char const*) ;

void set_option_nobuild(struct option *opts, int shortopt,
   const char *longopt,
   const char *build_opt,
   bool can_skip)
{
 struct option *opt = find_option(opts, shortopt, longopt);

 if (!opt)
  return;

 opt->flags |= PARSE_OPT_NOBUILD;
 opt->flags |= can_skip ? PARSE_OPT_CANSKIP : 0;
 opt->build_opt = build_opt;
}
