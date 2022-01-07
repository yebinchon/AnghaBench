
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int show_hist_headers; } ;


 int perf_config_bool (char const*,char const*) ;
 int strcmp (char const*,char*) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static int perf_ui_config(const char *var, const char *value)
{

 if (!strcmp(var, "ui.show-headers"))
  symbol_conf.show_hist_headers = perf_config_bool(var, value);

 return 0;
}
