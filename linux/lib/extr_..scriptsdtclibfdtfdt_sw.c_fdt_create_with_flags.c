
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fdt_reserve_entry {int dummy; } ;
struct fdt_header {int dummy; } ;


 size_t FDT_ALIGN (int,int) ;
 int FDT_CREATE_FLAGS_ALL ;
 int FDT_ERR_BADFLAGS ;
 int FDT_ERR_NOSPACE ;
 int FDT_LAST_SUPPORTED_VERSION ;
 int FDT_SW_MAGIC ;
 int fdt_off_mem_rsvmap (void*) ;
 int fdt_set_last_comp_version (void*,int) ;
 int fdt_set_magic (void*,int ) ;
 int fdt_set_off_dt_strings (void*,int ) ;
 int fdt_set_off_dt_struct (void*,int ) ;
 int fdt_set_off_mem_rsvmap (void*,size_t const) ;
 int fdt_set_totalsize (void*,int) ;
 int fdt_set_version (void*,int ) ;
 int memset (void*,int ,int) ;

int fdt_create_with_flags(void *buf, int bufsize, uint32_t flags)
{
 const size_t hdrsize = FDT_ALIGN(sizeof(struct fdt_header),
      sizeof(struct fdt_reserve_entry));
 void *fdt = buf;

 if (bufsize < hdrsize)
  return -FDT_ERR_NOSPACE;

 if (flags & ~FDT_CREATE_FLAGS_ALL)
  return -FDT_ERR_BADFLAGS;

 memset(buf, 0, bufsize);
 fdt_set_magic(fdt, FDT_SW_MAGIC);
 fdt_set_version(fdt, FDT_LAST_SUPPORTED_VERSION);
 fdt_set_last_comp_version(fdt, flags);

 fdt_set_totalsize(fdt, bufsize);

 fdt_set_off_mem_rsvmap(fdt, hdrsize);
 fdt_set_off_dt_struct(fdt, fdt_off_mem_rsvmap(fdt));
 fdt_set_off_dt_strings(fdt, 0);

 return 0;
}
