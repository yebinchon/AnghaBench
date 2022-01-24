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
typedef  int u16 ;
struct wm8753_priv {int dai_func; int /*<<< orphan*/  voice_fmt; int /*<<< orphan*/  hifi_fmt; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  WM8753_IOCTL ; 
 struct wm8753_priv* FUNC0 (struct snd_soc_component*) ; 
 scalar_t__ FUNC1 (struct snd_soc_component*) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 struct snd_soc_component* FUNC4 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC4(kcontrol);
	struct wm8753_priv *wm8753 = FUNC0(component);
	u16 ioctl;

	if (wm8753->dai_func == ucontrol->value.enumerated.item[0])
		return 0;

	if (FUNC1(component))
		return -EBUSY;

	ioctl = FUNC2(component, WM8753_IOCTL);

	wm8753->dai_func = ucontrol->value.enumerated.item[0];

	if (((ioctl >> 2) & 0x3) == wm8753->dai_func)
		return 1;

	ioctl = (ioctl & 0x1f3) | (wm8753->dai_func << 2);
	FUNC3(component, WM8753_IOCTL, ioctl);


	FUNC5(component, wm8753->hifi_fmt);
	FUNC6(component, wm8753->voice_fmt);

	return 1;
}