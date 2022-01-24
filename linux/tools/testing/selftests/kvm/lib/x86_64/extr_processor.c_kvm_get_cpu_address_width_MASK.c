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
struct kvm_cpuid_entry2 {int edx; int eax; } ;

/* Variables and functions */
 int FUNC0 () ; 
 struct kvm_cpuid_entry2* FUNC1 (int) ; 

void FUNC2(unsigned int *pa_bits, unsigned int *va_bits)
{
	struct kvm_cpuid_entry2 *entry;
	bool pae;

	/* SDM 4.1.4 */
	if (FUNC0() < 0x80000008) {
		pae = FUNC1(1)->edx & (1 << 6);
		*pa_bits = pae ? 36 : 32;
		*va_bits = 32;
	} else {
		entry = FUNC1(0x80000008);
		*pa_bits = entry->eax & 0xff;
		*va_bits = (entry->eax >> 8) & 0xff;
	}
}