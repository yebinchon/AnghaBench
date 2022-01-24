#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_emu10k1 {int iommu_workaround; TYPE_1__* card; } ;
struct iommu_domain {scalar_t__ type; } ;
struct TYPE_5__ {int /*<<< orphan*/  bus; } ;
struct TYPE_4__ {TYPE_2__* dev; } ;

/* Variables and functions */
 scalar_t__ IOMMU_DOMAIN_IDENTITY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 struct iommu_domain* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_emu10k1 *emu)
{
	struct iommu_domain *domain;

	emu->iommu_workaround = false;

	if (!FUNC2(emu->card->dev->bus))
		return;

	domain = FUNC1(emu->card->dev);
	if (domain && domain->type == IOMMU_DOMAIN_IDENTITY)
		return;

	FUNC0(emu->card->dev,
		   "non-passthrough IOMMU detected, widening DMA allocations");
	emu->iommu_workaround = true;
}