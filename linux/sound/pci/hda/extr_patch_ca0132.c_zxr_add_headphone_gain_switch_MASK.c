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
struct snd_kcontrol_new {int dummy; } ;
struct hda_codec {int dummy; } ;

/* Variables and functions */
 struct snd_kcontrol_new FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDA_OUTPUT ; 
 int /*<<< orphan*/  ZXR_HEADPHONE_GAIN ; 
 int /*<<< orphan*/  FUNC1 (struct snd_kcontrol_new*,struct hda_codec*) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hda_codec *codec)
{
	struct snd_kcontrol_new knew =
		FUNC0("ZxR: 600 Ohm Gain",
				    ZXR_HEADPHONE_GAIN, 1, HDA_OUTPUT);

	return FUNC2(codec, ZXR_HEADPHONE_GAIN,
				FUNC1(&knew, codec));
}