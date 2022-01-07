
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* uint8_t ;
typedef scalar_t__ uint64_t ;
struct kvm_vm {int dummy; } ;
typedef int FILE ;


 scalar_t__ REGION_ENTRY_INVALID ;
 scalar_t__ REGION_ENTRY_ORIGIN ;
 scalar_t__ REGION_ENTRY_TYPE ;
 scalar_t__* addr_gpa2hva (struct kvm_vm*,scalar_t__) ;
 int fprintf (int *,char*,char*,char*,int,scalar_t__,scalar_t__) ;
 int virt_dump_ptes (int *,struct kvm_vm*,char*,scalar_t__) ;

__attribute__((used)) static void virt_dump_region(FILE *stream, struct kvm_vm *vm, uint8_t indent,
        uint64_t reg_tab_addr)
{
 uint64_t addr, *entry;

 for (addr = reg_tab_addr; addr < reg_tab_addr + 0x400 * 8; addr += 8) {
  entry = addr_gpa2hva(vm, addr);
  if (*entry & REGION_ENTRY_INVALID)
   continue;
  fprintf(stream, "%*srt%lde @ 0x%lx: 0x%016lx\n",
   indent, "", 4 - ((*entry & REGION_ENTRY_TYPE) >> 2),
   addr, *entry);
  if (*entry & REGION_ENTRY_TYPE) {
   virt_dump_region(stream, vm, indent + 2,
      *entry & REGION_ENTRY_ORIGIN);
  } else {
   virt_dump_ptes(stream, vm, indent + 2,
           *entry & REGION_ENTRY_ORIGIN);
  }
 }
}
