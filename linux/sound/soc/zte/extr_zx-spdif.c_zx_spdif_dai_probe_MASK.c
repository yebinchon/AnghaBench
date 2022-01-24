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
struct TYPE_2__ {int maxburst; scalar_t__ addr; } ;
struct zx_spdif_info {TYPE_1__ dma_data; scalar_t__ mapbase; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ZX_DATA ; 
 struct zx_spdif_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dai*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dai*,struct zx_spdif_info*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai)
{
	struct zx_spdif_info *zx_spdif = FUNC0(dai->dev);

	FUNC2(dai, zx_spdif);
	zx_spdif->dma_data.addr = zx_spdif->mapbase + ZX_DATA;
	zx_spdif->dma_data.maxburst = 8;
	FUNC1(dai, &zx_spdif->dma_data, NULL);
	return 0;
}