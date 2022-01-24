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
struct sun4i_spdif_dev {int /*<<< orphan*/  dma_params_tx; } ;
struct snd_soc_dai {int dummy; } ;

/* Variables and functions */
 struct sun4i_spdif_dev* FUNC0 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dai*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai)
{
	struct sun4i_spdif_dev *host = FUNC0(dai);

	FUNC1(dai, &host->dma_params_tx, NULL);
	return 0;
}