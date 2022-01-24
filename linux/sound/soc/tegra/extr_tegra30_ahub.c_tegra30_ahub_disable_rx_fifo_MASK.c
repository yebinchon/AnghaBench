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
 int TEGRA30_AHUB_CHANNEL_CTRL ; 
 int TEGRA30_AHUB_CHANNEL_CTRL_RX_EN ; 
 int TEGRA30_AHUB_CHANNEL_CTRL_STRIDE ; 
 int TEGRA30_AHUB_RXCIF_APBIF_RX0 ; 
 TYPE_1__* ahub ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

int FUNC4(enum tegra30_ahub_rxcif rxcif)
{
	int channel = rxcif - TEGRA30_AHUB_RXCIF_APBIF_RX0;
	int reg, val;

	FUNC0(ahub->dev);

	reg = TEGRA30_AHUB_CHANNEL_CTRL +
	      (channel * TEGRA30_AHUB_CHANNEL_CTRL_STRIDE);
	val = FUNC2(reg);
	val &= ~TEGRA30_AHUB_CHANNEL_CTRL_RX_EN;
	FUNC3(reg, val);

	FUNC1(ahub->dev);

	return 0;
}