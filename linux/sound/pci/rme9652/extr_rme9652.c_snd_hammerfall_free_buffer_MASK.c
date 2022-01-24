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
struct snd_dma_buffer {scalar_t__ area; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_dma_buffer*) ; 

__attribute__((used)) static void FUNC1(struct snd_dma_buffer *dmab, struct pci_dev *pci)
{
	if (dmab->area)
		FUNC0(dmab);
}