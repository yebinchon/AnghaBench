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
struct snd_usb_midi {int /*<<< orphan*/  disc_rwsem; int /*<<< orphan*/  mutex; int /*<<< orphan*/  card; struct snd_kcontrol* roland_load_ctl; scalar_t__* opened; int /*<<< orphan*/  list; scalar_t__ disconnected; } ;
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_kcontrol {int /*<<< orphan*/  id; TYPE_2__* vd; } ;
struct TYPE_4__ {int /*<<< orphan*/  access; } ;
struct TYPE_3__ {struct snd_usb_midi* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_ACCESS_INACTIVE ; 
 int /*<<< orphan*/  SNDRV_CTL_EVENT_MASK_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_usb_midi*) ; 

__attribute__((used)) static int FUNC8(struct snd_rawmidi_substream *substream, int dir,
			  int open)
{
	struct snd_usb_midi *umidi = substream->rmidi->private_data;
	struct snd_kcontrol *ctl;

	FUNC0(&umidi->disc_rwsem);
	if (umidi->disconnected) {
		FUNC6(&umidi->disc_rwsem);
		return open ? -ENODEV : 0;
	}

	FUNC1(&umidi->mutex);
	if (open) {
		if (!umidi->opened[0] && !umidi->opened[1]) {
			if (umidi->roland_load_ctl) {
				ctl = umidi->roland_load_ctl;
				ctl->vd[0].access |=
					SNDRV_CTL_ELEM_ACCESS_INACTIVE;
				FUNC3(umidi->card,
				       SNDRV_CTL_EVENT_MASK_INFO, &ctl->id);
				FUNC7(umidi);
			}
		}
		umidi->opened[dir]++;
		if (umidi->opened[1])
			FUNC4(&umidi->list);
	} else {
		umidi->opened[dir]--;
		if (!umidi->opened[1])
			FUNC5(&umidi->list);
		if (!umidi->opened[0] && !umidi->opened[1]) {
			if (umidi->roland_load_ctl) {
				ctl = umidi->roland_load_ctl;
				ctl->vd[0].access &=
					~SNDRV_CTL_ELEM_ACCESS_INACTIVE;
				FUNC3(umidi->card,
				       SNDRV_CTL_EVENT_MASK_INFO, &ctl->id);
			}
		}
	}
	FUNC2(&umidi->mutex);
	FUNC6(&umidi->disc_rwsem);
	return 0;
}