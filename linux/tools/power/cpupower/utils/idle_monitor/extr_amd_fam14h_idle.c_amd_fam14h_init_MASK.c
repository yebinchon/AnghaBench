#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_4__ {size_t id; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ cstate_t ;

/* Variables and functions */
 size_t NBP1 ; 
 int PCI_MONITOR_ENABLE_REG ; 
 int FUNC0 (TYPE_1__*,int*,int*,unsigned int) ; 
 int /*<<< orphan*/  amd_fam14h_pci_dev ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__** previous_count ; 

__attribute__((used)) static int FUNC4(cstate_t *state, unsigned int cpu)
{
	int enable_bit, pci_offset, ret;
	uint32_t val;

	ret = FUNC0(state, &pci_offset, &enable_bit, cpu);
	if (ret)
		return ret;

	/* NBP1 needs extra treating -> write 1 to D18F6x98 bit 1 for init */
	if (state->id == NBP1) {
		val = FUNC2(amd_fam14h_pci_dev, pci_offset);
		val |= 1 << enable_bit;
		val = FUNC3(amd_fam14h_pci_dev, pci_offset, val);
		return ret;
	}

	/* Enable monitor */
	val = FUNC2(amd_fam14h_pci_dev, PCI_MONITOR_ENABLE_REG);
	FUNC1("Init %s: read at offset: 0x%x val: %u\n", state->name,
	       PCI_MONITOR_ENABLE_REG, (unsigned int) val);
	val |= 1 << enable_bit;
	FUNC3(amd_fam14h_pci_dev, PCI_MONITOR_ENABLE_REG, val);

	FUNC1("Init %s: offset: 0x%x enable_bit: %d - val: %u (%u)\n",
	       state->name, PCI_MONITOR_ENABLE_REG, enable_bit,
	       (unsigned int) val, cpu);

	/* Set counter to zero */
	FUNC3(amd_fam14h_pci_dev, pci_offset, 0);
	previous_count[state->id][cpu] = 0;

	return 0;
}