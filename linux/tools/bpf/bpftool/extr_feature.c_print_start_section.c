
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_name (int ,char const*) ;
 int jsonw_start_object (int ) ;
 int printf (char*,char const*) ;

__attribute__((used)) static void
print_start_section(const char *json_title, const char *plain_title,
      const char *define_comment, const char *define_prefix)
{
 if (json_output) {
  jsonw_name(json_wtr, json_title);
  jsonw_start_object(json_wtr);
 } else if (define_prefix) {
  printf("%s\n", define_comment);
 } else {
  printf("%s\n", plain_title);
 }
}
