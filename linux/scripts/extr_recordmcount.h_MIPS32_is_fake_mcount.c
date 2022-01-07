
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int r_offset; } ;
typedef TYPE_1__ Elf_Rel ;
typedef scalar_t__ Elf_Addr ;


 scalar_t__ MIPS_FAKEMCOUNT_OFFSET ;
 scalar_t__ _w (int ) ;

__attribute__((used)) static int MIPS_is_fake_mcount(Elf_Rel const *rp)
{
 static Elf_Addr old_r_offset = ~(Elf_Addr)0;
 Elf_Addr current_r_offset = _w(rp->r_offset);
 int is_fake;

 is_fake = (old_r_offset != ~(Elf_Addr)0) &&
  (current_r_offset - old_r_offset == MIPS_FAKEMCOUNT_OFFSET);
 old_r_offset = current_r_offset;

 return is_fake;
}
