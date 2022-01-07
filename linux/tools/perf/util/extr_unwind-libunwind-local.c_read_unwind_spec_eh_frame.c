
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct machine {int dummy; } ;
struct TYPE_2__ {scalar_t__ eh_frame_hdr_offset; } ;
struct dso {TYPE_1__ data; } ;


 int EINVAL ;
 int dso__data_get_fd (struct dso*,struct machine*) ;
 int dso__data_put_fd (struct dso*) ;
 scalar_t__ elf_section_offset (int,char*) ;
 int unwind_spec_ehframe (struct dso*,struct machine*,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int read_unwind_spec_eh_frame(struct dso *dso, struct machine *machine,
         u64 *table_data, u64 *segbase,
         u64 *fde_count)
{
 int ret = -EINVAL, fd;
 u64 offset = dso->data.eh_frame_hdr_offset;

 if (offset == 0) {
  fd = dso__data_get_fd(dso, machine);
  if (fd < 0)
   return -EINVAL;


  offset = elf_section_offset(fd, ".eh_frame_hdr");
  dso->data.eh_frame_hdr_offset = offset;
  dso__data_put_fd(dso);
 }

 if (offset)
  ret = unwind_spec_ehframe(dso, machine, offset,
       table_data, segbase,
       fde_count);

 return ret;
}
