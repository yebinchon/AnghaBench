
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_add_man_viewer_info (char const*,size_t,char const*) ;
 scalar_t__ supported_man_viewer (char const*,size_t) ;
 int unsupported_man_viewer (char const*,char*) ;

__attribute__((used)) static int add_man_viewer_path(const char *name,
          size_t len,
          const char *value)
{
 if (supported_man_viewer(name, len))
  do_add_man_viewer_info(name, len, value);
 else
  unsupported_man_viewer(name, "cmd");

 return 0;
}
