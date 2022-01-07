
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {scalar_t__ type; int short_name; scalar_t__ long_name; } ;


 scalar_t__ OPTION_END ;
 int strcmp (scalar_t__,char const*) ;

__attribute__((used)) static struct option *
find_option(struct option *opts, int shortopt, const char *longopt)
{
 for (; opts->type != OPTION_END; opts++) {
  if ((shortopt && opts->short_name == shortopt) ||
      (opts->long_name && longopt &&
       !strcmp(opts->long_name, longopt)))
   return opts;
 }
 return ((void*)0);
}
