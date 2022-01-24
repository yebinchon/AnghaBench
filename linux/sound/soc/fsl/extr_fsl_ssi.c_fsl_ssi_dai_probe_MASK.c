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
struct snd_soc_dai {int dummy; } ;
struct fsl_ssi {int /*<<< orphan*/  dma_params_rx; int /*<<< orphan*/  dma_params_tx; scalar_t__ use_dma; TYPE_1__* soc; } ;
struct TYPE_2__ {scalar_t__ imx; } ;

/* Variables and functions */
 struct fsl_ssi* FUNC0 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dai*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai)
{
	struct fsl_ssi *ssi = FUNC0(dai);

	if (ssi->soc->imx && ssi->use_dma)
		FUNC1(dai, &ssi->dma_params_tx,
					  &ssi->dma_params_rx);

	return 0;
}