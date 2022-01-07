
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct option {int short_name; } ;
struct TYPE_2__ {int command; } ;


 TYPE_1__ params ;
 int params_add_filter (char const*) ;

__attribute__((used)) static int opt_set_filter_with_command(const struct option *opt,
           const char *str, int unset)
{
 if (!unset)
  params.command = opt->short_name;

 if (str)
  return params_add_filter(str);

 return 0;
}
