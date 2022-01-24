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
struct hda_codec {scalar_t__ probe_id; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ HDA_CODEC_ID_GENERIC ; 
 scalar_t__ HDA_CODEC_ID_GENERIC_HDMI ; 
 scalar_t__ FUNC0 (struct hda_codec*) ; 
 scalar_t__ FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 

__attribute__((used)) static int FUNC3(struct hda_codec *codec)
{
	if (codec->probe_id)
		return -ENODEV;

	if (FUNC1(codec)) {
		codec->probe_id = HDA_CODEC_ID_GENERIC_HDMI;
		FUNC2(codec);
		if (FUNC0(codec))
			return 0;
	}

	codec->probe_id = HDA_CODEC_ID_GENERIC;
	FUNC2(codec);
	if (FUNC0(codec))
		return 0;
	return -ENODEV;
}