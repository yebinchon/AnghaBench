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
struct sun4i_spdif_quirks {int /*<<< orphan*/  val_fctl_ftx; } ;
struct sun4i_spdif_dev {int /*<<< orphan*/  regmap; struct sun4i_spdif_quirks* quirks; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUN4I_SPDIF_CTL ; 
 int /*<<< orphan*/  SUN4I_SPDIF_CTL_RESET ; 
 int /*<<< orphan*/  SUN4I_SPDIF_FCTL ; 
 int /*<<< orphan*/  SUN4I_SPDIF_TXCNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sun4i_spdif_dev *host)
{
	const struct sun4i_spdif_quirks *quirks = host->quirks;

	/* soft reset SPDIF */
	FUNC1(host->regmap, SUN4I_SPDIF_CTL, SUN4I_SPDIF_CTL_RESET);

	/* flush TX FIFO */
	FUNC0(host->regmap, SUN4I_SPDIF_FCTL,
			   quirks->val_fctl_ftx, quirks->val_fctl_ftx);

	/* clear TX counter */
	FUNC1(host->regmap, SUN4I_SPDIF_TXCNT, 0);
}