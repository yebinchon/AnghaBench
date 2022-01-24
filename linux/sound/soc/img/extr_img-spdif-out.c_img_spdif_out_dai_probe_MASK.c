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
struct img_spdif_out {int /*<<< orphan*/  dma_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  img_spdif_out_controls ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct img_spdif_out* FUNC2 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dai*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dai *dai)
{
	struct img_spdif_out *spdif = FUNC2(dai);

	FUNC3(dai, &spdif->dma_data, NULL);

	FUNC1(dai, img_spdif_out_controls,
			FUNC0(img_spdif_out_controls));

	return 0;
}