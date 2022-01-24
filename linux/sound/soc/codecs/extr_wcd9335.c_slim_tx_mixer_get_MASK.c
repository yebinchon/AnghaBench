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
struct wcd9335_codec {int /*<<< orphan*/  tx_port_value; } ;
struct snd_soc_dapm_context {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 struct wcd9335_codec* FUNC0 (int /*<<< orphan*/ ) ; 
 struct snd_soc_dapm_context* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kc,
			     struct snd_ctl_elem_value *ucontrol)
{

	struct snd_soc_dapm_context *dapm = FUNC1(kc);
	struct wcd9335_codec *wcd = FUNC0(dapm->dev);

	ucontrol->value.integer.value[0] = wcd->tx_port_value;

	return 0;
}