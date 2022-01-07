
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_property {int dummy; } ;


 scalar_t__ fdt_get_property (void*,int,char const*,int*) ;

__attribute__((used)) static inline struct fdt_property *fdt_get_property_w(void *fdt, int nodeoffset,
            const char *name,
            int *lenp)
{
 return (struct fdt_property *)(uintptr_t)
  fdt_get_property(fdt, nodeoffset, name, lenp);
}
