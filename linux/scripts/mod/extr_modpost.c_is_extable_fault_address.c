
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int r_offset; } ;
typedef TYPE_1__ Elf_Rela ;


 int extable_entry_size ;
 int fatal (char*) ;

__attribute__((used)) static inline bool is_extable_fault_address(Elf_Rela *r)
{





 if (r->r_offset && extable_entry_size == 0)
  fatal("extable_entry size hasn't been discovered!\n");

 return ((r->r_offset == 0) ||
  (r->r_offset % extable_entry_size == 0));
}
