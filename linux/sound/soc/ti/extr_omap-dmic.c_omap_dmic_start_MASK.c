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
typedef  int u32 ;
struct omap_dmic {int ch_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_DMIC_CTRL_REG ; 
 int /*<<< orphan*/  OMAP_DMIC_DMAENABLE_SET_REG ; 
 int OMAP_DMIC_DMA_ENABLE ; 
 int FUNC0 (struct omap_dmic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_dmic*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct omap_dmic *dmic)
{
	u32 ctrl = FUNC0(dmic, OMAP_DMIC_CTRL_REG);

	/* Configure DMA controller */
	FUNC1(dmic, OMAP_DMIC_DMAENABLE_SET_REG,
			OMAP_DMIC_DMA_ENABLE);

	FUNC1(dmic, OMAP_DMIC_CTRL_REG, ctrl | dmic->ch_enabled);
}