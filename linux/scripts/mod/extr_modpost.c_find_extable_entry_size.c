
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int r_offset; } ;
typedef TYPE_1__ Elf_Rela ;


 int extable_entry_size ;

__attribute__((used)) static void find_extable_entry_size(const char* const sec, const Elf_Rela* r)
{
 if (!extable_entry_size)
  extable_entry_size = r->r_offset * 2;
}
