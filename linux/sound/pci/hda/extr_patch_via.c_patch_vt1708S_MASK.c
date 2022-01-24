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
struct TYPE_4__ {int mixer_nid; } ;
struct via_spec {TYPE_2__ gen; } ;
struct TYPE_3__ {int vendor_id; } ;
struct hda_codec {TYPE_1__ core; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ VT1708BCE ; 
 scalar_t__ FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*) ; 
 struct via_spec* FUNC5 (struct hda_codec*) ; 
 int FUNC6 (struct hda_codec*) ; 
 int /*<<< orphan*/  vt1708S_init_verbs ; 

__attribute__((used)) static int FUNC7(struct hda_codec *codec)
{
	struct via_spec *spec;
	int err;

	/* create a codec specific record */
	spec = FUNC5(codec);
	if (spec == NULL)
		return -ENOMEM;

	spec->gen.mixer_nid = 0x16;
	FUNC1(codec, 0x1a, 0, 3, 40);
	FUNC1(codec, 0x1e, 0, 3, 40);

	/* correct names for VT1708BCE */
	if (FUNC0(codec) == VT1708BCE)
		FUNC3(codec, "VT1708BCE");
	/* correct names for VT1705 */
	if (codec->core.vendor_id == 0x11064397)
		FUNC3(codec, "VT1705");

	err = FUNC2(codec, vt1708S_init_verbs);
	if (err < 0)
		goto error;

	/* automatic parse from the BIOS config */
	err = FUNC6(codec);
	if (err < 0)
		goto error;

	return 0;

 error:
	FUNC4(codec);
	return err;
}