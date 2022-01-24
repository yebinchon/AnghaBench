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
struct TYPE_2__ {int dig_outs; scalar_t__ dig_in_pin; } ;
struct hda_gen_spec {int /*<<< orphan*/  digin_path; TYPE_1__ autocfg; int /*<<< orphan*/ * digout_paths; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec)
{
	struct hda_gen_spec *spec = codec->spec;
	int i;
	hda_nid_t pin;

	for (i = 0; i < spec->autocfg.dig_outs; i++)
		FUNC2(codec, spec->digout_paths[i]);
	pin = spec->autocfg.dig_in_pin;
	if (pin) {
		FUNC0(codec, pin);
		FUNC1(codec, spec->digin_path);
	}
}