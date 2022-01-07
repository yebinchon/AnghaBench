
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display_info {scalar_t__ default_val; } ;


 int fdt_path_offset (char*,char*) ;
 int puts (scalar_t__) ;
 int report_error (char*,int) ;
 scalar_t__ show_data_for_item (char*,struct display_info*,int,char const*) ;
 char* utilfdt_read (char const*) ;

__attribute__((used)) static int do_fdtget(struct display_info *disp, const char *filename,
       char **arg, int arg_count, int args_per_step)
{
 char *blob;
 const char *prop;
 int i, node;

 blob = utilfdt_read(filename);
 if (!blob)
  return -1;

 for (i = 0; i + args_per_step <= arg_count; i += args_per_step) {
  node = fdt_path_offset(blob, arg[i]);
  if (node < 0) {
   if (disp->default_val) {
    puts(disp->default_val);
    continue;
   } else {
    report_error(arg[i], node);
    return -1;
   }
  }
  prop = args_per_step == 1 ? ((void*)0) : arg[i + 1];

  if (show_data_for_item(blob, disp, node, prop))
   return -1;
 }
 return 0;
}
