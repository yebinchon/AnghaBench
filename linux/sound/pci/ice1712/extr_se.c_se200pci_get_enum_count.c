
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char** member; } ;


 TYPE_1__* se200pci_cont ;

__attribute__((used)) static int se200pci_get_enum_count(int n)
{
 const char * const *member;
 int c;

 member = se200pci_cont[n].member;
 if (!member)
  return 0;
 for (c = 0; member[c]; c++)
  ;
 return c;
}
