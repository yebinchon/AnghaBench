
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct kmap {TYPE_1__* ref_reloc_sym; } ;
struct TYPE_2__ {scalar_t__ addr; int name; } ;


 scalar_t__ kallsyms__get_function_start (char const*,int ,scalar_t__*) ;

__attribute__((used)) static int kallsyms__delta(struct kmap *kmap, const char *filename, u64 *delta)
{
 u64 addr;

 if (!kmap->ref_reloc_sym || !kmap->ref_reloc_sym->name)
  return 0;

 if (kallsyms__get_function_start(filename, kmap->ref_reloc_sym->name, &addr))
  return -1;

 *delta = addr - kmap->ref_reloc_sym->addr;
 return 0;
}
