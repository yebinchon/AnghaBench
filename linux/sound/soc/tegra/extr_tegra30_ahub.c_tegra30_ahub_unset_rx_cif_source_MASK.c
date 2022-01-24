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
typedef  enum tegra30_ahub_rxcif { ____Placeholder_tegra30_ahub_rxcif } tegra30_ahub_rxcif ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int TEGRA30_AHUB_AUDIO_RX ; 
 int TEGRA30_AHUB_AUDIO_RX_STRIDE ; 
 int TEGRA30_AHUB_RXCIF_APBIF_RX0 ; 
 TYPE_1__* ahub ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

int FUNC3(enum tegra30_ahub_rxcif rxcif)
{
	int channel = rxcif - TEGRA30_AHUB_RXCIF_APBIF_RX0;
	int reg;

	FUNC0(ahub->dev);

	reg = TEGRA30_AHUB_AUDIO_RX +
	      (channel * TEGRA30_AHUB_AUDIO_RX_STRIDE);
	FUNC2(reg, 0);

	FUNC1(ahub->dev);

	return 0;
}