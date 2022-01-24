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
struct fsl_micfil {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MICFIL_CTRL1_MDIS_MASK ; 
 int /*<<< orphan*/  MICFIL_CTRL1_SRES ; 
 int /*<<< orphan*/  MICFIL_CTRL1_SRES_MASK ; 
 int /*<<< orphan*/  REG_MICFIL_CTRL1 ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct fsl_micfil* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct fsl_micfil *micfil = FUNC1(dev);
	int ret;

	ret = FUNC2(micfil->regmap,
				 REG_MICFIL_CTRL1,
				 MICFIL_CTRL1_MDIS_MASK,
				 0);
	if (ret) {
		FUNC0(dev, "failed to clear MDIS bit %d\n", ret);
		return ret;
	}

	ret = FUNC2(micfil->regmap,
				 REG_MICFIL_CTRL1,
				 MICFIL_CTRL1_SRES_MASK,
				 MICFIL_CTRL1_SRES);
	if (ret) {
		FUNC0(dev, "failed to reset MICFIL: %d\n", ret);
		return ret;
	}

	return 0;
}