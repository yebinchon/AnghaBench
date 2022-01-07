
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_reserve_entry {int dummy; } ;
struct fdt_header {int dummy; } ;


 int FDT_ALIGN (int,int) ;
 scalar_t__ FDT_END ;
 int FDT_ERR_NOSPACE ;
 int FDT_MAGIC ;
 int FDT_RO_PROBE (void const*) ;
 int fdt_blocks_misordered_ (void const*,int,int) ;
 int fdt_boot_cpuid_phys (void const*) ;
 int fdt_move (void const*,void*,int) ;
 scalar_t__ fdt_next_tag (void const*,int,int*) ;
 int fdt_num_mem_rsv (void const*) ;
 int fdt_packblocks_ (void const*,char*,int,int) ;
 int fdt_set_boot_cpuid_phys (void*,int ) ;
 int fdt_set_last_comp_version (void*,int) ;
 int fdt_set_magic (void*,int ) ;
 int fdt_set_size_dt_struct (void*,int) ;
 int fdt_set_totalsize (void*,int) ;
 int fdt_set_version (void*,int) ;
 int fdt_size_dt_strings (void const*) ;
 int fdt_size_dt_struct (void const*) ;
 int fdt_totalsize (void const*) ;
 int fdt_version (void const*) ;
 int memmove (void*,char*,int) ;

int fdt_open_into(const void *fdt, void *buf, int bufsize)
{
 int err;
 int mem_rsv_size, struct_size;
 int newsize;
 const char *fdtstart = fdt;
 const char *fdtend = fdtstart + fdt_totalsize(fdt);
 char *tmp;

 FDT_RO_PROBE(fdt);

 mem_rsv_size = (fdt_num_mem_rsv(fdt)+1)
  * sizeof(struct fdt_reserve_entry);

 if (fdt_version(fdt) >= 17) {
  struct_size = fdt_size_dt_struct(fdt);
 } else {
  struct_size = 0;
  while (fdt_next_tag(fdt, struct_size, &struct_size) != FDT_END)
   ;
  if (struct_size < 0)
   return struct_size;
 }

 if (!fdt_blocks_misordered_(fdt, mem_rsv_size, struct_size)) {

  err = fdt_move(fdt, buf, bufsize);
  if (err)
   return err;
  fdt_set_version(buf, 17);
  fdt_set_size_dt_struct(buf, struct_size);
  fdt_set_totalsize(buf, bufsize);
  return 0;
 }


 newsize = FDT_ALIGN(sizeof(struct fdt_header), 8) + mem_rsv_size
  + struct_size + fdt_size_dt_strings(fdt);

 if (bufsize < newsize)
  return -FDT_ERR_NOSPACE;


 tmp = buf;

 if (((tmp + newsize) > fdtstart) && (tmp < fdtend)) {

  tmp = (char *)(uintptr_t)fdtend;
  if ((tmp + newsize) > ((char *)buf + bufsize))
   return -FDT_ERR_NOSPACE;
 }

 fdt_packblocks_(fdt, tmp, mem_rsv_size, struct_size);
 memmove(buf, tmp, newsize);

 fdt_set_magic(buf, FDT_MAGIC);
 fdt_set_totalsize(buf, bufsize);
 fdt_set_version(buf, 17);
 fdt_set_last_comp_version(buf, 16);
 fdt_set_boot_cpuid_phys(buf, fdt_boot_cpuid_phys(fdt));

 return 0;
}
