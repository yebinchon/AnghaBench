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
struct hda_gen_spec {int multi_cap_vol; } ;
struct hda_codec {TYPE_1__* bus; int /*<<< orphan*/  patch_ops; struct hda_gen_spec* spec; } ;
struct TYPE_2__ {int needs_damn_long_delay; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  ca0110_patch_ops ; 
 struct hda_gen_spec* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_gen_spec*) ; 

__attribute__((used)) static int FUNC4(struct hda_codec *codec)
{
	struct hda_gen_spec *spec;
	int err;

	spec = FUNC1(sizeof(*spec), GFP_KERNEL);
	if (!spec)
		return -ENOMEM;
	FUNC3(spec);
	codec->spec = spec;
	codec->patch_ops = ca0110_patch_ops;

	spec->multi_cap_vol = 1;
	codec->bus->needs_damn_long_delay = 1;

	err = FUNC0(codec);
	if (err < 0)
		goto error;

	return 0;

 error:
	FUNC2(codec);
	return err;
}