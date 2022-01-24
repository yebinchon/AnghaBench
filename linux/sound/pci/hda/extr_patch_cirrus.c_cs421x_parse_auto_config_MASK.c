#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hda_codec {struct cs_spec* spec; } ;
struct TYPE_4__ {scalar_t__ speaker_outs; } ;
struct TYPE_5__ {TYPE_1__ autocfg; } ;
struct cs_spec {scalar_t__ vendor_nid; TYPE_3__ gen; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  CS4210_DAC_NID ; 
 scalar_t__ CS4210_VENDOR_NID ; 
 int ENOMEM ; 
 int /*<<< orphan*/  cs421x_speaker_boost_ctl ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct hda_codec*,TYPE_1__*) ; 
 int FUNC4 (struct hda_codec*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hda_codec *codec)
{
	struct cs_spec *spec = codec->spec;
	hda_nid_t dac = CS4210_DAC_NID;
	int err;

	FUNC0(codec, dac);

	err = FUNC4(codec, &spec->gen.autocfg, NULL, 0);
	if (err < 0)
		return err;

	err = FUNC3(codec, &spec->gen.autocfg);
	if (err < 0)
		return err;

	FUNC1(codec);

	if (spec->gen.autocfg.speaker_outs &&
	    spec->vendor_nid == CS4210_VENDOR_NID) {
		if (!FUNC2(&spec->gen, NULL,
					  &cs421x_speaker_boost_ctl))
			return -ENOMEM;
	}

	return 0;
}