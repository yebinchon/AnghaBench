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
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int skip_verbs; } ;
struct alc_spec {int /*<<< orphan*/  init_amp; TYPE_1__ gen; int /*<<< orphan*/  (* init_hook ) (struct hda_codec*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_FIXUP_ACT_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 scalar_t__ FUNC3 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*) ; 

__attribute__((used)) static int FUNC8(struct hda_codec *codec)
{
	struct alc_spec *spec = codec->spec;

	/* hibernation resume needs the full chip initialization */
	if (FUNC3(codec))
		FUNC2(codec);

	if (spec->init_hook)
		spec->init_hook(codec);

	spec->gen.skip_verbs = 1; /* applied in below */
	FUNC6(codec);
	FUNC1(codec);
	FUNC0(codec, spec->init_amp);
	FUNC5(codec); /* apply verbs here after own init */

	FUNC4(codec, HDA_FIXUP_ACT_INIT);

	return 0;
}