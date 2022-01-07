
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ config_file_name ;
 int pr_warning (char*,char const*,...) ;

__attribute__((used)) static void bad_config(const char *name)
{
 if (config_file_name)
  pr_warning("bad config value for '%s' in %s, ignoring...\n", name, config_file_name);
 else
  pr_warning("bad config value for '%s', ignoring...\n", name);
}
