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
struct usb_mixer_interface {TYPE_1__* chip; } ;
struct snd_kcontrol {int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  keep_iface_ctl ; 
 int FUNC0 (int /*<<< orphan*/ ,struct snd_kcontrol*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_kcontrol*) ; 
 struct snd_kcontrol* FUNC3 (int /*<<< orphan*/ *,struct usb_mixer_interface*) ; 

__attribute__((used)) static int FUNC4(struct usb_mixer_interface *mixer)
{
	struct snd_kcontrol *kctl = FUNC3(&keep_iface_ctl, mixer);

	/* need only one control per card */
	if (FUNC1(mixer->chip->card, &kctl->id)) {
		FUNC2(kctl);
		return 0;
	}

	return FUNC0(mixer->chip->card, kctl);
}