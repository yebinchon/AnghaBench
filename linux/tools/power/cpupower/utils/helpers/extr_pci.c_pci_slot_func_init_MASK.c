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
struct pci_dev {int dummy; } ;
struct pci_access {int dummy; } ;

/* Variables and functions */
 struct pci_dev* FUNC0 (struct pci_access**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 

struct pci_dev *FUNC1(struct pci_access **pacc, int slot,
				       int func)
{
	return FUNC0(pacc, 0, 0, slot, func, -1, -1);
}