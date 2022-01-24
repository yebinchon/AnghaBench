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
struct snd_kcontrol_new {int count; } ;
struct auto_pin_cfg {int dig_outs; int /*<<< orphan*/ * dig_out_pins; } ;
struct TYPE_2__ {struct auto_pin_cfg autocfg; } ;
struct sigmatel_spec {char** spdif_labels; TYPE_1__ gen; int /*<<< orphan*/  spdif_mux; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ *,char const* const,int,int /*<<< orphan*/ *) ; 
 struct snd_kcontrol_new* FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stac_smux_mixer ; 
 char** stac_spdif_labels ; 

__attribute__((used)) static int FUNC4(struct hda_codec *codec)
{
	struct sigmatel_spec *spec = codec->spec;
	struct auto_pin_cfg *cfg = &spec->gen.autocfg;
	const char * const *labels = spec->spdif_labels;
	struct snd_kcontrol_new *kctl;
	int i, num_cons;

	if (cfg->dig_outs < 1)
		return 0;

	num_cons = FUNC3(codec, cfg->dig_out_pins[0]);
	if (num_cons <= 1)
		return 0;

	if (!labels)
		labels = stac_spdif_labels;
	for (i = 0; i < num_cons; i++) {
		if (FUNC0(!labels[i]))
			return -EINVAL;
		FUNC1(codec, &spec->spdif_mux, labels[i], i, NULL);
	}

	kctl = FUNC2(&spec->gen, NULL, &stac_smux_mixer);
	if (!kctl)
		return -ENOMEM;
	kctl->count = cfg->dig_outs;

	return 0;
}