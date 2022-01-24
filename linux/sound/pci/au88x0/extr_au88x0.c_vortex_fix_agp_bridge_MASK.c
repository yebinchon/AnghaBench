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
typedef  int u8 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct pci_dev*,int,int*) ; 
 int FUNC3 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *via)
{
	int rc;
	u8 value;

	/*
	 * only set the bit (Extend PCI#2 Internal Master for
	 * Efficient Handling of Dummy Requests) if the can
	 * read the config and it is not already set
	 */

	if (!(rc = FUNC2(via, 0x42, &value))
			&& ((value & 0x10)
				|| !(rc = FUNC3(via, 0x42, value | 0x10)))) {
		FUNC0(&via->dev, "bridge config is 0x%x\n", value | 0x10);
	} else {
		FUNC1(&via->dev,
			 "could not set vortex latency: pci error 0x%x\n", rc);
	}
}