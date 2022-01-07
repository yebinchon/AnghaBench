
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* uint8_t ;
struct kvm_sregs {int * interrupt_bitmap; int apic_base; int efer; int cr8; int cr4; int cr3; int cr2; int cr0; int idt; int gdt; int ldt; int tr; int ss; int gs; int fs; int es; int ds; int cs; } ;
typedef int FILE ;


 int KVM_NR_INTERRUPTS ;
 int dtable_dump (int *,int *,char*) ;
 int fprintf (int *,char*,char*,char*,...) ;
 int segment_dump (int *,int *,char*) ;

void sregs_dump(FILE *stream, struct kvm_sregs *sregs,
  uint8_t indent)
{
 unsigned int i;

 fprintf(stream, "%*scs:\n", indent, "");
 segment_dump(stream, &sregs->cs, indent + 2);
 fprintf(stream, "%*sds:\n", indent, "");
 segment_dump(stream, &sregs->ds, indent + 2);
 fprintf(stream, "%*ses:\n", indent, "");
 segment_dump(stream, &sregs->es, indent + 2);
 fprintf(stream, "%*sfs:\n", indent, "");
 segment_dump(stream, &sregs->fs, indent + 2);
 fprintf(stream, "%*sgs:\n", indent, "");
 segment_dump(stream, &sregs->gs, indent + 2);
 fprintf(stream, "%*sss:\n", indent, "");
 segment_dump(stream, &sregs->ss, indent + 2);
 fprintf(stream, "%*str:\n", indent, "");
 segment_dump(stream, &sregs->tr, indent + 2);
 fprintf(stream, "%*sldt:\n", indent, "");
 segment_dump(stream, &sregs->ldt, indent + 2);

 fprintf(stream, "%*sgdt:\n", indent, "");
 dtable_dump(stream, &sregs->gdt, indent + 2);
 fprintf(stream, "%*sidt:\n", indent, "");
 dtable_dump(stream, &sregs->idt, indent + 2);

 fprintf(stream, "%*scr0: 0x%.16llx cr2: 0x%.16llx "
  "cr3: 0x%.16llx cr4: 0x%.16llx\n",
  indent, "",
  sregs->cr0, sregs->cr2, sregs->cr3, sregs->cr4);
 fprintf(stream, "%*scr8: 0x%.16llx efer: 0x%.16llx "
  "apic_base: 0x%.16llx\n",
  indent, "",
  sregs->cr8, sregs->efer, sregs->apic_base);

 fprintf(stream, "%*sinterrupt_bitmap:\n", indent, "");
 for (i = 0; i < (KVM_NR_INTERRUPTS + 63) / 64; i++) {
  fprintf(stream, "%*s%.16llx\n", indent + 2, "",
   sregs->interrupt_bitmap[i]);
 }
}
