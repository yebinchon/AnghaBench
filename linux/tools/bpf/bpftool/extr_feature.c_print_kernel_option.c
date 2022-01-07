
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ errno ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_int_field (int ,char const*,int) ;
 int jsonw_null_field (int ,char const*) ;
 int jsonw_string_field (int ,char const*,char const*) ;
 int printf (char*,char const*,...) ;
 int strtol (char const*,char**,int ) ;

__attribute__((used)) static void print_kernel_option(const char *name, const char *value)
{
 char *endptr;
 int res;



 if (json_output) {
  if (!value) {
   jsonw_null_field(json_wtr, name);
   return;
  }
  errno = 0;
  res = strtol(value, &endptr, 0);
  if (!errno && *endptr == '\n')
   jsonw_int_field(json_wtr, name, res);
  else
   jsonw_string_field(json_wtr, name, value);
 } else {
  if (value)
   printf("%s is set to %s\n", name, value);
  else
   printf("%s is not set\n", name);
 }
}
