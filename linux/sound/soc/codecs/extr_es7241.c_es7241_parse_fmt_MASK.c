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
struct es7241_data {int /*<<< orphan*/  fmt; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_DAIFMT_I2S ; 
 int /*<<< orphan*/  SND_SOC_DAIFMT_LEFT_J ; 
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC1(struct device *dev, struct es7241_data *priv)
{
	bool is_leftj;

	/*
	 * The format is given by a pull resistor on the SDOUT pin:
	 * pull-up for i2s, pull-down for left justified.
	 */
	is_leftj = FUNC0(dev->of_node,
					 "everest,sdout-pull-down");
	if (is_leftj)
		priv->fmt = SND_SOC_DAIFMT_LEFT_J;
	else
		priv->fmt = SND_SOC_DAIFMT_I2S;
}