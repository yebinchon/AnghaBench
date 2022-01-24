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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AZX_CGCTL_MISCBDCGE_MASK ; 
 int /*<<< orphan*/  AZX_PCIREG_CGCTL ; 
 struct pci_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct device *dev, bool enable)
{
	struct pci_dev *pci = FUNC0(dev);
	u32 val;

	val = enable ? AZX_CGCTL_MISCBDCGE_MASK : 0;

	FUNC1(pci, AZX_PCIREG_CGCTL, AZX_CGCTL_MISCBDCGE_MASK, val);
}