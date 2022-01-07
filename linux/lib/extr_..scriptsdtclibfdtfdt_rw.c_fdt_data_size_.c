
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdt_off_dt_strings (void*) ;
 int fdt_size_dt_strings (void*) ;

__attribute__((used)) static inline int fdt_data_size_(void *fdt)
{
 return fdt_off_dt_strings(fdt) + fdt_size_dt_strings(fdt);
}
