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
struct TYPE_2__ {int /*<<< orphan*/  build_pcms; } ;
struct hda_codec {TYPE_1__ patch_ops; } ;

/* Variables and functions */
 int FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  tegra_hdmi_build_pcms ; 

__attribute__((used)) static int FUNC1(struct hda_codec *codec)
{
	int err;

	err = FUNC0(codec);
	if (err)
		return err;

	codec->patch_ops.build_pcms = tegra_hdmi_build_pcms;

	return 0;
}