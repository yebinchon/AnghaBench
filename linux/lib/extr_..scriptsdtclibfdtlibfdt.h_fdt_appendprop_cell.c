
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int fdt_appendprop_u32 (void*,int,char const*,int ) ;

__attribute__((used)) static inline int fdt_appendprop_cell(void *fdt, int nodeoffset,
          const char *name, uint32_t val)
{
 return fdt_appendprop_u32(fdt, nodeoffset, name, val);
}
