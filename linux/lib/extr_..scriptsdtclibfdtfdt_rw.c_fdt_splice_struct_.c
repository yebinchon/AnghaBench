
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fdt_off_dt_strings (void*) ;
 int fdt_set_off_dt_strings (void*,scalar_t__) ;
 int fdt_set_size_dt_struct (void*,scalar_t__) ;
 scalar_t__ fdt_size_dt_struct (void*) ;
 int fdt_splice_ (void*,void*,int,int) ;

__attribute__((used)) static int fdt_splice_struct_(void *fdt, void *p,
         int oldlen, int newlen)
{
 int delta = newlen - oldlen;
 int err;

 if ((err = fdt_splice_(fdt, p, oldlen, newlen)))
  return err;

 fdt_set_size_dt_struct(fdt, fdt_size_dt_struct(fdt) + delta);
 fdt_set_off_dt_strings(fdt, fdt_off_dt_strings(fdt) + delta);
 return 0;
}
