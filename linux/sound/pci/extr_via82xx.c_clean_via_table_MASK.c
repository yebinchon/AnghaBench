#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * area; } ;
struct viadev {int /*<<< orphan*/ * idx_table; TYPE_1__ table; } ;
struct snd_pcm_substream {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(struct viadev *dev, struct snd_pcm_substream *substream,
			   struct pci_dev *pci)
{
	if (dev->table.area) {
		FUNC1(&dev->table);
		dev->table.area = NULL;
	}
	FUNC0(dev->idx_table);
	dev->idx_table = NULL;
	return 0;
}