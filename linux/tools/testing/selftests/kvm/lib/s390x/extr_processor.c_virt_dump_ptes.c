
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* uint8_t ;
typedef scalar_t__ uint64_t ;
struct kvm_vm {int dummy; } ;
typedef int FILE ;


 scalar_t__ PAGE_INVALID ;
 scalar_t__* addr_gpa2hva (struct kvm_vm*,scalar_t__) ;
 int fprintf (int *,char*,char*,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void virt_dump_ptes(FILE *stream, struct kvm_vm *vm, uint8_t indent,
      uint64_t ptea_start)
{
 uint64_t *pte, ptea;

 for (ptea = ptea_start; ptea < ptea_start + 0x100 * 8; ptea += 8) {
  pte = addr_gpa2hva(vm, ptea);
  if (*pte & PAGE_INVALID)
   continue;
  fprintf(stream, "%*spte @ 0x%lx: 0x%016lx\n",
   indent, "", ptea, *pte);
 }
}
