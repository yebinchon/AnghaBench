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
struct hdmi_spec_per_pin {int /*<<< orphan*/  work; } ;
struct hdmi_spec {int num_pins; int pcm_used; TYPE_2__* pcm_rec; scalar_t__ dyn_pcm_assign; scalar_t__ acomp_registered; } ;
struct hda_codec {int /*<<< orphan*/  card; scalar_t__ relaxed_resume; TYPE_1__* bus; struct hdmi_spec* spec; } ;
struct TYPE_4__ {int /*<<< orphan*/ * jack; } ;
struct TYPE_3__ {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hdmi_spec_per_pin*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 struct hdmi_spec_per_pin* FUNC4 (struct hdmi_spec*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct hda_codec *codec)
{
	struct hdmi_spec *spec = codec->spec;
	int pin_idx, pcm_idx;

	if (spec->acomp_registered) {
		FUNC6(&codec->bus->core);
	} else if (FUNC1(codec)) {
		FUNC7(&codec->bus->core, NULL);
		codec->relaxed_resume = 0;
	}

	for (pin_idx = 0; pin_idx < spec->num_pins; pin_idx++) {
		struct hdmi_spec_per_pin *per_pin = FUNC4(spec, pin_idx);
		FUNC0(&per_pin->work);
		FUNC2(per_pin);
	}

	for (pcm_idx = 0; pcm_idx < spec->pcm_used; pcm_idx++) {
		if (spec->pcm_rec[pcm_idx].jack == NULL)
			continue;
		if (spec->dyn_pcm_assign)
			FUNC5(codec->card,
					spec->pcm_rec[pcm_idx].jack);
		else
			spec->pcm_rec[pcm_idx].jack = NULL;
	}

	FUNC3(codec);
}