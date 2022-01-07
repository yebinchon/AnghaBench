
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int r_info; } ;
typedef TYPE_1__ Elf_Rel ;


 int ELF_R_INFO (unsigned int,unsigned int) ;
 int _w (int ) ;

__attribute__((used)) static void fn_ELF_R_INFO(Elf_Rel *const rp, unsigned sym, unsigned type)
{
 rp->r_info = _w(ELF_R_INFO(sym, type));
}
