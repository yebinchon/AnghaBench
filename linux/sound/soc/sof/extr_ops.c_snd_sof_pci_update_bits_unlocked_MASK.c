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
typedef  unsigned int u32 ;
struct snd_sof_dev {int /*<<< orphan*/  dev; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,unsigned int,unsigned int) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
bool FUNC4(struct snd_sof_dev *sdev, u32 offset,
				      u32 mask, u32 value)
{
	struct pci_dev *pci = FUNC3(sdev->dev);
	unsigned int old, new;
	u32 ret = 0;

	FUNC1(pci, offset, &ret);
	old = ret;
	FUNC0(sdev->dev, "Debug PCIR: %8.8x at  %8.8x\n", old & mask, offset);

	new = (old & ~mask) | (value & mask);

	if (old == new)
		return false;

	FUNC2(pci, offset, new);
	FUNC0(sdev->dev, "Debug PCIW: %8.8x at  %8.8x\n", value,
		offset);

	return true;
}