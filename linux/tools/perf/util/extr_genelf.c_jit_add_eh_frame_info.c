
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int d_align; long long d_off; int d_size; void* d_version; void* d_type; void* d_buf; } ;
struct TYPE_5__ {int sh_name; int sh_addr; scalar_t__ sh_entsize; void* sh_flags; void* sh_type; } ;
typedef TYPE_1__ Elf_Shdr ;
typedef int Elf_Scn ;
typedef TYPE_2__ Elf_Data ;
typedef int Elf ;


 void* ELF_T_BYTE ;
 void* EV_CURRENT ;
 void* SHF_ALLOC ;
 void* SHT_PROGBITS ;
 TYPE_1__* elf_getshdr (int *) ;
 TYPE_2__* elf_newdata (int *) ;
 int * elf_newscn (int *) ;
 int warnx (char*) ;

__attribute__((used)) static int
jit_add_eh_frame_info(Elf *e, void* unwinding, uint64_t unwinding_header_size,
        uint64_t unwinding_size, uint64_t base_offset)
{
 Elf_Data *d;
 Elf_Scn *scn;
 Elf_Shdr *shdr;
 uint64_t unwinding_table_size = unwinding_size - unwinding_header_size;




 scn = elf_newscn(e);
 if (!scn) {
  warnx("cannot create section");
  return -1;
 }

 d = elf_newdata(scn);
 if (!d) {
  warnx("cannot get new data");
  return -1;
 }

 d->d_align = 8;
 d->d_off = 0LL;
 d->d_buf = unwinding;
 d->d_type = ELF_T_BYTE;
 d->d_size = unwinding_table_size;
 d->d_version = EV_CURRENT;

 shdr = elf_getshdr(scn);
 if (!shdr) {
  warnx("cannot get section header");
  return -1;
 }

 shdr->sh_name = 104;
 shdr->sh_type = SHT_PROGBITS;
 shdr->sh_addr = base_offset;
 shdr->sh_flags = SHF_ALLOC;
 shdr->sh_entsize = 0;




 scn = elf_newscn(e);
 if (!scn) {
  warnx("cannot create section");
  return -1;
 }

 d = elf_newdata(scn);
 if (!d) {
  warnx("cannot get new data");
  return -1;
 }

 d->d_align = 4;
 d->d_off = 0LL;
 d->d_buf = unwinding + unwinding_table_size;
 d->d_type = ELF_T_BYTE;
 d->d_size = unwinding_header_size;
 d->d_version = EV_CURRENT;

 shdr = elf_getshdr(scn);
 if (!shdr) {
  warnx("cannot get section header");
  return -1;
 }

 shdr->sh_name = 90;
 shdr->sh_type = SHT_PROGBITS;
 shdr->sh_addr = base_offset + unwinding_table_size;
 shdr->sh_flags = SHF_ALLOC;
 shdr->sh_entsize = 0;

 return 0;
}
