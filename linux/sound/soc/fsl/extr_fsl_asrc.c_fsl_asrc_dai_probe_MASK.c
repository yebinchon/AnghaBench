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
struct snd_soc_dai {int dummy; } ;
struct fsl_asrc {int /*<<< orphan*/  dma_params_rx; int /*<<< orphan*/  dma_params_tx; } ;

/* Variables and functions */
 struct fsl_asrc* FUNC0 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dai*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai)
{
	struct fsl_asrc *asrc_priv = FUNC0(dai);

	FUNC1(dai, &asrc_priv->dma_params_tx,
				  &asrc_priv->dma_params_rx);

	return 0;
}