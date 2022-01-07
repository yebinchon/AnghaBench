
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int st_other; } ;
typedef TYPE_1__ GElf_Sym ;


 int GELF_ST_VISIBILITY (int ) ;

__attribute__((used)) static inline uint8_t elf_sym__visibility(const GElf_Sym *sym)
{
 return GELF_ST_VISIBILITY(sym->st_other);
}
