#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct atiixp_modem {TYPE_1__* card; } ;
struct atiixp_dma {int /*<<< orphan*/  substream; TYPE_2__* ops; int /*<<< orphan*/  running; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct atiixp_modem *chip,
				struct atiixp_dma *dma)
{
	if (! dma->substream || ! dma->running)
		return;
	FUNC0(chip->card->dev, "XRUN detected (DMA %d)\n", dma->ops->type);
	FUNC1(dma->substream);
}