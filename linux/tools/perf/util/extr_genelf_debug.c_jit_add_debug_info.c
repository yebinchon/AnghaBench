
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct buffer_ext {int dummy; } ;
struct TYPE_6__ {int d_align; long long d_off; void* d_version; void* d_size; void* d_type; void* d_buf; } ;
struct TYPE_5__ {int sh_name; scalar_t__ sh_entsize; scalar_t__ sh_flags; scalar_t__ sh_addr; void* sh_type; } ;
typedef TYPE_1__ Elf_Shdr ;
typedef int Elf_Scn ;
typedef TYPE_2__ Elf_Data ;
typedef int Elf ;


 int ELF_C_WRITE ;
 void* ELF_T_BYTE ;
 void* EV_CURRENT ;
 void* SHT_PROGBITS ;
 void* buffer_ext_addr (struct buffer_ext*) ;
 int buffer_ext_init (struct buffer_ext*) ;
 void* buffer_ext_size (struct buffer_ext*) ;
 TYPE_1__* elf_getshdr (int *) ;
 TYPE_2__* elf_newdata (int *) ;
 int * elf_newscn (int *) ;
 scalar_t__ elf_update (int *,int ) ;
 int jit_process_debug_info (int ,void*,int,struct buffer_ext*,struct buffer_ext*,struct buffer_ext*) ;
 int warnx (char*) ;

int
jit_add_debug_info(Elf *e, uint64_t code_addr, void *debug, int nr_debug_entries)
{
 Elf_Data *d;
 Elf_Scn *scn;
 Elf_Shdr *shdr;
 struct buffer_ext dl, di, da;
 int ret;

 buffer_ext_init(&dl);
 buffer_ext_init(&di);
 buffer_ext_init(&da);

 ret = jit_process_debug_info(code_addr, debug, nr_debug_entries, &dl, &da, &di);
 if (ret)
  return -1;



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

 d->d_align = 1;
 d->d_off = 0LL;
 d->d_buf = buffer_ext_addr(&dl);
 d->d_type = ELF_T_BYTE;
 d->d_size = buffer_ext_size(&dl);
 d->d_version = EV_CURRENT;

 shdr = elf_getshdr(scn);
 if (!shdr) {
  warnx("cannot get section header");
  return -1;
 }

 shdr->sh_name = 52;
 shdr->sh_type = SHT_PROGBITS;
 shdr->sh_addr = 0;
 shdr->sh_flags = 0;
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

 d->d_align = 1;
 d->d_off = 0LL;
 d->d_buf = buffer_ext_addr(&di);
 d->d_type = ELF_T_BYTE;
 d->d_size = buffer_ext_size(&di);
 d->d_version = EV_CURRENT;

 shdr = elf_getshdr(scn);
 if (!shdr) {
  warnx("cannot get section header");
  return -1;
 }

 shdr->sh_name = 64;
 shdr->sh_type = SHT_PROGBITS;
 shdr->sh_addr = 0;
 shdr->sh_flags = 0;
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

 d->d_align = 1;
 d->d_off = 0LL;
 d->d_buf = buffer_ext_addr(&da);
 d->d_type = ELF_T_BYTE;
 d->d_size = buffer_ext_size(&da);
 d->d_version = EV_CURRENT;

 shdr = elf_getshdr(scn);
 if (!shdr) {
  warnx("cannot get section header");
  return -1;
 }

 shdr->sh_name = 76;
 shdr->sh_type = SHT_PROGBITS;
 shdr->sh_addr = 0;
 shdr->sh_flags = 0;
 shdr->sh_entsize = 0;




 if (elf_update(e, ELF_C_WRITE) < 0) {
  warnx("elf_update debug failed");
  return -1;
 }
 return 0;
}
