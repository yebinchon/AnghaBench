
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_3__ {int r_info; } ;
typedef TYPE_1__ Elf_Rel ;


 int ELF_R_SYM (int ) ;
 int _w (int ) ;

__attribute__((used)) static uint_t fn_ELF_R_SYM(Elf_Rel const *rp)
{
 return ELF_R_SYM(_w(rp->r_info));
}
