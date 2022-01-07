
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_reserve_entry {int dummy; } ;


 struct fdt_reserve_entry const* fdt_mem_rsv_ (void const*,int) ;
 int fdt_off_mem_rsvmap (void const*) ;
 int fdt_totalsize (void const*) ;

__attribute__((used)) static const struct fdt_reserve_entry *fdt_mem_rsv(const void *fdt, int n)
{
 int offset = n * sizeof(struct fdt_reserve_entry);
 int absoffset = fdt_off_mem_rsvmap(fdt) + offset;

 if (absoffset < fdt_off_mem_rsvmap(fdt))
  return ((void*)0);
 if (absoffset > fdt_totalsize(fdt) - sizeof(struct fdt_reserve_entry))
  return ((void*)0);
 return fdt_mem_rsv_(fdt, n);
}
