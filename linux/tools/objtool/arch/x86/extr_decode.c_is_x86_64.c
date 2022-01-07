
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int e_machine; } ;
struct elf {TYPE_1__ ehdr; } ;




 int WARN (char*,int) ;

__attribute__((used)) static int is_x86_64(struct elf *elf)
{
 switch (elf->ehdr.e_machine) {
 case 128:
  return 1;
 case 129:
  return 0;
 default:
  WARN("unexpected ELF machine type %d", elf->ehdr.e_machine);
  return -1;
 }
}
