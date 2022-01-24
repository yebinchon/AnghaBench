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
struct hda_tegra {int /*<<< orphan*/  hda_clk; int /*<<< orphan*/  hda2codec_2x_clk; int /*<<< orphan*/  hda2hdmi_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct hda_tegra *data)
{
	int rc;

	rc = FUNC1(data->hda_clk);
	if (rc)
		return rc;
	rc = FUNC1(data->hda2codec_2x_clk);
	if (rc)
		goto disable_hda;
	rc = FUNC1(data->hda2hdmi_clk);
	if (rc)
		goto disable_codec_2x;

	return 0;

disable_codec_2x:
	FUNC0(data->hda2codec_2x_clk);
disable_hda:
	FUNC0(data->hda_clk);
	return rc;
}