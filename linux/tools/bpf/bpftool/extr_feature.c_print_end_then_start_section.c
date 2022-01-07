
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_end_object (int ) ;
 int print_start_section (char const*,char const*,char const*,char const*) ;
 int printf (char*) ;

__attribute__((used)) static void
print_end_then_start_section(const char *json_title, const char *plain_title,
        const char *define_comment,
        const char *define_prefix)
{
 if (json_output)
  jsonw_end_object(json_wtr);
 else
  printf("\n");

 print_start_section(json_title, plain_title, define_comment,
       define_prefix);
}
