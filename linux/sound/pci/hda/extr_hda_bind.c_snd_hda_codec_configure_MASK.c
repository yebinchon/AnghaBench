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
struct hda_codec {int /*<<< orphan*/  core; int /*<<< orphan*/  preset; scalar_t__ probe_id; } ;

/* Variables and functions */
 scalar_t__ HDA_CODEC_ID_GENERIC ; 
 int FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,char*) ; 
 scalar_t__ FUNC3 (struct hda_codec*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct hda_codec *codec)
{
	int err;

	if (FUNC3(codec))
		codec->probe_id = HDA_CODEC_ID_GENERIC;
	else
		codec->probe_id = 0;

	err = FUNC4(&codec->core);
	if (err < 0)
		return err;

	if (!codec->preset)
		FUNC1(codec);
	if (!codec->preset) {
		err = FUNC0(codec);
		if (err < 0) {
			FUNC2(codec, "Unable to bind the codec\n");
			goto error;
		}
	}

	return 0;

 error:
	FUNC5(&codec->core);
	return err;
}