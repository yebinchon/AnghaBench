
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t fdt_header_size_ (int ) ;
 int fdt_version (void const*) ;

__attribute__((used)) static inline size_t fdt_header_size(const void *fdt)
{
 return fdt_header_size_(fdt_version(fdt));
}
