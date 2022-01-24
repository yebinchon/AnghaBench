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
struct regmap {int dummy; } ;
struct hdac_device {int /*<<< orphan*/  vendor_verbs; struct regmap* regmap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  hda_regmap_cfg ; 
 struct regmap* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct hdac_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

int FUNC4(struct hdac_device *codec)
{
	struct regmap *regmap;

	regmap = FUNC2(&codec->dev, NULL, codec, &hda_regmap_cfg);
	if (FUNC0(regmap))
		return FUNC1(regmap);
	codec->regmap = regmap;
	FUNC3(&codec->vendor_verbs, sizeof(unsigned int), 8);
	return 0;
}