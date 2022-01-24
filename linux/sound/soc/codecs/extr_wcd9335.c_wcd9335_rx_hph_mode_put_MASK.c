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
typedef  scalar_t__ u32 ;
struct wcd9335_codec {scalar_t__ hph_mode; int /*<<< orphan*/  dev; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 scalar_t__ CLS_H_HIFI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct wcd9335_codec* FUNC1 (int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kc,
				 struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC2(kc);
	struct wcd9335_codec *wcd = FUNC1(component->dev);
	u32 mode_val;

	mode_val = ucontrol->value.enumerated.item[0];

	if (mode_val == 0) {
		FUNC0(wcd->dev, "Invalid HPH Mode, default to ClSH HiFi\n");
		mode_val = CLS_H_HIFI;
	}
	wcd->hph_mode = mode_val;

	return 0;
}