
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdt_path_offset (void*,char const*) ;
 int fdt_setprop (void*,int,char const*,char const*,int) ;
 int report_error (char const*,int,int) ;

__attribute__((used)) static int store_key_value(void *blob, const char *node_name,
  const char *property, const char *buf, int len)
{
 int node;
 int err;

 node = fdt_path_offset(blob, node_name);
 if (node < 0) {
  report_error(node_name, -1, node);
  return -1;
 }

 err = fdt_setprop(blob, node, property, buf, len);
 if (err) {
  report_error(property, -1, err);
  return -1;
 }
 return 0;
}
