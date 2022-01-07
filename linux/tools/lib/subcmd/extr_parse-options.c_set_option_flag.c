
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int flags; } ;


 struct option* find_option (struct option*,int,char const*) ;

void set_option_flag(struct option *opts, int shortopt, const char *longopt,
       int flag)
{
 struct option *opt = find_option(opts, shortopt, longopt);

 if (opt)
  opt->flags |= flag;
 return;
}
