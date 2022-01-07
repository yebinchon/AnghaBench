
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_property {int nameoff; } ;


 int FDT_ERR_NOTFOUND ;
 int fdt32_to_cpu (int ) ;
 int fdt_first_property_offset (void const*,int) ;
 struct fdt_property* fdt_get_property_by_offset (void const*,int,int *) ;
 int fdt_next_property_offset (void const*,int) ;
 char* fdt_string (void const*,int ) ;
 int puts (char const*) ;

__attribute__((used)) static int list_properties(const void *blob, int node)
{
 const struct fdt_property *data;
 const char *name;
 int prop;

 prop = fdt_first_property_offset(blob, node);
 do {

  if (prop < 0)
   return prop == -FDT_ERR_NOTFOUND ? 0 : prop;
  data = fdt_get_property_by_offset(blob, prop, ((void*)0));
  name = fdt_string(blob, fdt32_to_cpu(data->nameoff));
  if (name)
   puts(name);
  prop = fdt_next_property_offset(blob, prop);
 } while (1);
}
