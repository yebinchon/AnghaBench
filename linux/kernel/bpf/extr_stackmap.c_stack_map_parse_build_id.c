
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ n_type; int n_namesz; int n_descsz; } ;
typedef int Elf32_Word ;
typedef TYPE_1__ Elf32_Nhdr ;


 int ALIGN (int,int) ;
 scalar_t__ BPF_BUILD_ID ;
 int BPF_BUILD_ID_SIZE ;
 int EINVAL ;
 int PAGE_SIZE ;
 int memcpy (unsigned char*,void*,int) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static inline int stack_map_parse_build_id(void *page_addr,
        unsigned char *build_id,
        void *note_start,
        Elf32_Word note_size)
{
 Elf32_Word note_offs = 0, new_offs;


 if (note_start < page_addr || note_start + note_size < note_start)
  return -EINVAL;


 if (note_start + note_size > page_addr + PAGE_SIZE)
  return -EINVAL;

 while (note_offs + sizeof(Elf32_Nhdr) < note_size) {
  Elf32_Nhdr *nhdr = (Elf32_Nhdr *)(note_start + note_offs);

  if (nhdr->n_type == BPF_BUILD_ID &&
      nhdr->n_namesz == sizeof("GNU") &&
      nhdr->n_descsz > 0 &&
      nhdr->n_descsz <= BPF_BUILD_ID_SIZE) {
   memcpy(build_id,
          note_start + note_offs +
          ALIGN(sizeof("GNU"), 4) + sizeof(Elf32_Nhdr),
          nhdr->n_descsz);
   memset(build_id + nhdr->n_descsz, 0,
          BPF_BUILD_ID_SIZE - nhdr->n_descsz);
   return 0;
  }
  new_offs = note_offs + sizeof(Elf32_Nhdr) +
   ALIGN(nhdr->n_namesz, 4) + ALIGN(nhdr->n_descsz, 4);
  if (new_offs <= note_offs)
   break;
  note_offs = new_offs;
 }
 return -EINVAL;
}
