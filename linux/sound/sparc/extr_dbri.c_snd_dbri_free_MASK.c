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
struct snd_dbri {int /*<<< orphan*/  dma_dvma; scalar_t__ dma; TYPE_1__* op; int /*<<< orphan*/  regs_size; scalar_t__ regs; scalar_t__ irq; } ;
struct dbri_dma {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/ * resource; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_GEN ; 
 int /*<<< orphan*/  FUNC0 (struct snd_dbri*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct snd_dbri*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct snd_dbri *dbri)
{
	FUNC2(D_GEN, "snd_dbri_free\n");
	FUNC0(dbri);

	if (dbri->irq)
		FUNC3(dbri->irq, dbri);

	if (dbri->regs)
		FUNC4(&dbri->op->resource[0], dbri->regs, dbri->regs_size);

	if (dbri->dma)
		FUNC1(&dbri->op->dev,
				  sizeof(struct dbri_dma),
				  (void *)dbri->dma, dbri->dma_dvma);
}