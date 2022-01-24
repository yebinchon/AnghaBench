#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ hook; scalar_t__ sw_kctl; } ;
struct hda_gen_spec {TYPE_2__ vmaster_mute; int /*<<< orphan*/  skip_verbs; int /*<<< orphan*/  (* init_hook ) (struct hda_codec*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  regmap; } ;
struct hda_codec {TYPE_1__ core; struct hda_gen_spec* spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC13 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC14 (struct hda_codec*) ; 

int FUNC15(struct hda_codec *codec)
{
	struct hda_gen_spec *spec = codec->spec;

	if (spec->init_hook)
		spec->init_hook(codec);

	if (!spec->skip_verbs)
		FUNC10(codec);

	FUNC8(codec);
	FUNC5(codec);
	FUNC7(codec);
	FUNC2(codec);
	FUNC3(codec);
	FUNC6(codec);
	FUNC4(codec);

	FUNC0(codec);

	FUNC13(codec);

	/* call init functions of standard auto-mute helpers */
	FUNC14(codec);

	FUNC9(codec->core.regmap);

	if (spec->vmaster_mute.sw_kctl && spec->vmaster_mute.hook)
		FUNC11(&spec->vmaster_mute);

	FUNC1(codec, 0x01);
	return 0;
}