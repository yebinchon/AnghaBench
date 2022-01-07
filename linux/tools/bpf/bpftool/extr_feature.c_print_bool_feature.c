
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_bool_field (int ,char const*,int) ;
 int printf (char*,char const*,char*,...) ;

__attribute__((used)) static void
print_bool_feature(const char *feat_name, const char *plain_name,
     const char *define_name, bool res, const char *define_prefix)
{
 if (json_output)
  jsonw_bool_field(json_wtr, feat_name, res);
 else if (define_prefix)
  printf("#define %s%sHAVE_%s\n", define_prefix,
         res ? "" : "NO_", define_name);
 else
  printf("%s is %savailable\n", plain_name, res ? "" : "NOT ");
}
