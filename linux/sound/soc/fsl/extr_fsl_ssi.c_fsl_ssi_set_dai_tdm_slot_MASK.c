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
typedef  int /*<<< orphan*/  u32 ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct regmap {int dummy; } ;
struct fsl_ssi {int slot_width; int slots; scalar_t__ i2s_net; struct regmap* regs; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  REG_SSI_SCR ; 
 int /*<<< orphan*/  REG_SSI_SRCCR ; 
 int /*<<< orphan*/  REG_SSI_SRMSK ; 
 int /*<<< orphan*/  REG_SSI_STCCR ; 
 int /*<<< orphan*/  REG_SSI_STMSK ; 
 int /*<<< orphan*/  SSI_SCR_SSIEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SSI_SxCCR_DC_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fsl_ssi* FUNC5 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dai *dai, u32 tx_mask,
				    u32 rx_mask, int slots, int slot_width)
{
	struct fsl_ssi *ssi = FUNC5(dai);
	struct regmap *regs = ssi->regs;
	u32 val;

	/* The word length should be 8, 10, 12, 16, 18, 20, 22 or 24 */
	if (slot_width & 1 || slot_width < 8 || slot_width > 24) {
		FUNC1(dai->dev, "invalid slot width: %d\n", slot_width);
		return -EINVAL;
	}

	/* The slot number should be >= 2 if using Network mode or I2S mode */
	if (ssi->i2s_net && slots < 2) {
		FUNC1(dai->dev, "slot number should be >= 2 in I2S or NET\n");
		return -EINVAL;
	}

	FUNC3(regs, REG_SSI_STCCR,
			   SSI_SxCCR_DC_MASK, FUNC0(slots));
	FUNC3(regs, REG_SSI_SRCCR,
			   SSI_SxCCR_DC_MASK, FUNC0(slots));

	/* Save the SCR register value */
	FUNC2(regs, REG_SSI_SCR, &val);
	/* Temporarily enable SSI to allow SxMSKs to be configurable */
	FUNC3(regs, REG_SSI_SCR, SSI_SCR_SSIEN, SSI_SCR_SSIEN);

	FUNC4(regs, REG_SSI_STMSK, ~tx_mask);
	FUNC4(regs, REG_SSI_SRMSK, ~rx_mask);

	/* Restore the value of SSIEN bit */
	FUNC3(regs, REG_SSI_SCR, SSI_SCR_SSIEN, val);

	ssi->slot_width = slot_width;
	ssi->slots = slots;

	return 0;
}