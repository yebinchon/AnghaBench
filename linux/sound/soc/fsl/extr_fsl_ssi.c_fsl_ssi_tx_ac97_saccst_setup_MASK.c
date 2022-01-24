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
struct regmap {int dummy; } ;
struct fsl_ssi {TYPE_1__* soc; struct regmap* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  imx21regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_SSI_SACCDIS ; 
 int /*<<< orphan*/  REG_SSI_SACCEN ; 
 int /*<<< orphan*/  FUNC0 (struct regmap*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct fsl_ssi *ssi)
{
	struct regmap *regs = ssi->regs;

	/* no SACC{ST,EN,DIS} regs on imx21-class SSI */
	if (!ssi->soc->imx21regs) {
		/* Disable all channel slots */
		FUNC0(regs, REG_SSI_SACCDIS, 0xff);
		/* Enable slots 3 & 4 -- PCM Playback Left & Right channels */
		FUNC0(regs, REG_SSI_SACCEN, 0x300);
	}
}