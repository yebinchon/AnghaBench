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
struct hda_tegra {void* hda2hdmi_clk; void* hda2codec_2x_clk; void* hda_clk; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (struct device*,char*) ; 

__attribute__((used)) static int FUNC4(struct hda_tegra *hda)
{
	struct device *dev = hda->dev;

	hda->hda_clk = FUNC3(dev, "hda");
	if (FUNC0(hda->hda_clk)) {
		FUNC2(dev, "failed to get hda clock\n");
		return FUNC1(hda->hda_clk);
	}
	hda->hda2codec_2x_clk = FUNC3(dev, "hda2codec_2x");
	if (FUNC0(hda->hda2codec_2x_clk)) {
		FUNC2(dev, "failed to get hda2codec_2x clock\n");
		return FUNC1(hda->hda2codec_2x_clk);
	}
	hda->hda2hdmi_clk = FUNC3(dev, "hda2hdmi");
	if (FUNC0(hda->hda2hdmi_clk)) {
		FUNC2(dev, "failed to get hda2hdmi clock\n");
		return FUNC1(hda->hda2hdmi_clk);
	}

	return 0;
}