#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char* uint8_t ;
struct kvm_sregs {int /*<<< orphan*/ * interrupt_bitmap; int /*<<< orphan*/  apic_base; int /*<<< orphan*/  efer; int /*<<< orphan*/  cr8; int /*<<< orphan*/  cr4; int /*<<< orphan*/  cr3; int /*<<< orphan*/  cr2; int /*<<< orphan*/  cr0; int /*<<< orphan*/  idt; int /*<<< orphan*/  gdt; int /*<<< orphan*/  ldt; int /*<<< orphan*/  tr; int /*<<< orphan*/  ss; int /*<<< orphan*/  gs; int /*<<< orphan*/  fs; int /*<<< orphan*/  es; int /*<<< orphan*/  ds; int /*<<< orphan*/  cs; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int KVM_NR_INTERRUPTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

void FUNC3(FILE *stream, struct kvm_sregs *sregs,
		uint8_t indent)
{
	unsigned int i;

	FUNC1(stream, "%*scs:\n", indent, "");
	FUNC2(stream, &sregs->cs, indent + 2);
	FUNC1(stream, "%*sds:\n", indent, "");
	FUNC2(stream, &sregs->ds, indent + 2);
	FUNC1(stream, "%*ses:\n", indent, "");
	FUNC2(stream, &sregs->es, indent + 2);
	FUNC1(stream, "%*sfs:\n", indent, "");
	FUNC2(stream, &sregs->fs, indent + 2);
	FUNC1(stream, "%*sgs:\n", indent, "");
	FUNC2(stream, &sregs->gs, indent + 2);
	FUNC1(stream, "%*sss:\n", indent, "");
	FUNC2(stream, &sregs->ss, indent + 2);
	FUNC1(stream, "%*str:\n", indent, "");
	FUNC2(stream, &sregs->tr, indent + 2);
	FUNC1(stream, "%*sldt:\n", indent, "");
	FUNC2(stream, &sregs->ldt, indent + 2);

	FUNC1(stream, "%*sgdt:\n", indent, "");
	FUNC0(stream, &sregs->gdt, indent + 2);
	FUNC1(stream, "%*sidt:\n", indent, "");
	FUNC0(stream, &sregs->idt, indent + 2);

	FUNC1(stream, "%*scr0: 0x%.16llx cr2: 0x%.16llx "
		"cr3: 0x%.16llx cr4: 0x%.16llx\n",
		indent, "",
		sregs->cr0, sregs->cr2, sregs->cr3, sregs->cr4);
	FUNC1(stream, "%*scr8: 0x%.16llx efer: 0x%.16llx "
		"apic_base: 0x%.16llx\n",
		indent, "",
		sregs->cr8, sregs->efer, sregs->apic_base);

	FUNC1(stream, "%*sinterrupt_bitmap:\n", indent, "");
	for (i = 0; i < (KVM_NR_INTERRUPTS + 63) / 64; i++) {
		FUNC1(stream, "%*s%.16llx\n", indent + 2, "",
			sregs->interrupt_bitmap[i]);
	}
}