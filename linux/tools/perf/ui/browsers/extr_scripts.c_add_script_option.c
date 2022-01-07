
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct script_config {char const** names; size_t index; int extra_format; int perf; int * paths; } ;
struct TYPE_2__ {scalar_t__ inline_name; } ;


 scalar_t__ asprintf (int *,char*,int ,char const*,char*,int ) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static int add_script_option(const char *name, const char *opt,
        struct script_config *c)
{
 c->names[c->index] = name;
 if (asprintf(&c->paths[c->index],
       "%s script %s -F +metric %s %s",
       c->perf, opt, symbol_conf.inline_name ? " --inline" : "",
       c->extra_format) < 0)
  return -1;
 c->index++;
 return 0;
}
