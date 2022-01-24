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
struct TYPE_2__ {int mixer_nid; } ;
struct via_spec {TYPE_1__ gen; } ;
struct hda_codec {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 struct via_spec* FUNC1 (struct hda_codec*) ; 
 int FUNC2 (struct hda_codec*) ; 

__attribute__((used)) static int FUNC3(struct hda_codec *codec)
{
	struct via_spec *spec;
	int err;

	/* create a codec specific record */
	spec = FUNC1(codec);
	if (spec == NULL)
		return -ENOMEM;

	spec->gen.mixer_nid = 0x18;

	err = FUNC2(codec);
	if (err < 0)
		goto error;

	return 0;

 error:
	FUNC0(codec);
	return err;
}