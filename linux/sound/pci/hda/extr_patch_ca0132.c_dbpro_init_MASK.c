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
struct auto_pin_cfg {int /*<<< orphan*/  dig_in_pin; int /*<<< orphan*/ * dig_out_pins; } ;
struct ca0132_spec {unsigned int num_inputs; int /*<<< orphan*/ * adcs; int /*<<< orphan*/ * input_pins; int /*<<< orphan*/  dig_in; int /*<<< orphan*/  dig_out; struct auto_pin_cfg autocfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;
	struct auto_pin_cfg *cfg = &spec->autocfg;
	unsigned int i;

	FUNC1(codec, cfg->dig_out_pins[0], spec->dig_out);
	FUNC0(codec, cfg->dig_in_pin, spec->dig_in);

	for (i = 0; i < spec->num_inputs; i++)
		FUNC0(codec, spec->input_pins[i], spec->adcs[i]);

	return 0;
}