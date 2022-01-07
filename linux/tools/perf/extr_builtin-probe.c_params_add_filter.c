
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ filter; } ;


 int EINVAL ;
 int ENOMEM ;
 TYPE_1__ params ;
 int pr_debug2 (char*,char const*) ;
 int pr_err (char*,...) ;
 scalar_t__ strfilter__new (char const*,char const**) ;
 int strfilter__or (scalar_t__,char const*,char const**) ;

__attribute__((used)) static int params_add_filter(const char *str)
{
 const char *err = ((void*)0);
 int ret = 0;

 pr_debug2("Add filter: %s\n", str);
 if (!params.filter) {
  params.filter = strfilter__new(str, &err);
  if (!params.filter)
   ret = err ? -EINVAL : -ENOMEM;
 } else
  ret = strfilter__or(params.filter, str, &err);

 if (ret == -EINVAL) {
  pr_err("Filter parse error at %td.\n", err - str + 1);
  pr_err("Source: \"%s\"\n", str);
  pr_err("         %*c\n", (int)(err - str + 1), '^');
 }

 return ret;
}
