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
struct fsl_spdif_priv {int /*<<< orphan*/  dma_params_rx; int /*<<< orphan*/  dma_params_tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fsl_spdif_ctrls ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fsl_spdif_priv* FUNC2 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dai*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dai *dai)
{
	struct fsl_spdif_priv *spdif_private = FUNC2(dai);

	FUNC3(dai, &spdif_private->dma_params_tx,
				  &spdif_private->dma_params_rx);

	FUNC1(dai, fsl_spdif_ctrls, FUNC0(fsl_spdif_ctrls));

	return 0;
}