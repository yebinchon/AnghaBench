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
struct sigmatel_spec {int eapd_switch; int /*<<< orphan*/  gpio_mask; int /*<<< orphan*/  gpio_mute; int /*<<< orphan*/  eapd_mask; int /*<<< orphan*/  gpio_data; int /*<<< orphan*/  gpio_dir; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hda_codec*,char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct hda_codec*,char*) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec)
{
	struct sigmatel_spec *spec = codec->spec;
	int val;

	if (FUNC0(codec, "gpio_mask", &spec->gpio_mask)) {
		spec->eapd_mask = spec->gpio_dir = spec->gpio_data =
			spec->gpio_mask;
	}
	if (FUNC0(codec, "gpio_dir", &spec->gpio_dir))
		spec->gpio_dir &= spec->gpio_mask;
	if (FUNC0(codec, "gpio_data", &spec->gpio_data))
		spec->gpio_data &= spec->gpio_mask;
	if (FUNC0(codec, "eapd_mask", &spec->eapd_mask))
		spec->eapd_mask &= spec->gpio_mask;
	if (FUNC0(codec, "gpio_mute", &spec->gpio_mute))
		spec->gpio_mute &= spec->gpio_mask;
	val = FUNC1(codec, "eapd_switch");
	if (val >= 0)
		spec->eapd_switch = val;
}