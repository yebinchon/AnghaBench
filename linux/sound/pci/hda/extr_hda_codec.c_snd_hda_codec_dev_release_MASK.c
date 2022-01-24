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
struct TYPE_2__ {scalar_t__ type; } ;
struct hda_codec {TYPE_1__ core; struct hda_codec* wcaps; struct hda_codec* modelname; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ HDA_DEV_LEGACY ; 
 struct hda_codec* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct hda_codec *codec = FUNC0(dev);

	FUNC1(codec);
	FUNC4(&codec->core);
	FUNC3(codec);
	FUNC2(codec->modelname);
	FUNC2(codec->wcaps);

	/*
	 * In the case of ASoC HD-audio, hda_codec is device managed.
	 * It will be freed when the ASoC device is removed.
	 */
	if (codec->core.type == HDA_DEV_LEGACY)
		FUNC2(codec);
}