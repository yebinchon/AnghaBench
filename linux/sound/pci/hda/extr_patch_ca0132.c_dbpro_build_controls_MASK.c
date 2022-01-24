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
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {scalar_t__ dig_in; scalar_t__ dig_out; } ;

/* Variables and functions */
 int FUNC0 (struct hda_codec*,scalar_t__) ; 
 int FUNC1 (struct hda_codec*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;
	int err = 0;

	if (spec->dig_out) {
		err = FUNC1(codec, spec->dig_out,
				spec->dig_out);
		if (err < 0)
			return err;
	}

	if (spec->dig_in) {
		err = FUNC0(codec, spec->dig_in);
		if (err < 0)
			return err;
	}

	return 0;
}