
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fdt_offset_ptr_ (void*,int) ;

__attribute__((used)) static inline void *fdt_offset_ptr_w_(void *fdt, int offset)
{
 return (void *)(uintptr_t)fdt_offset_ptr_(fdt, offset);
}
