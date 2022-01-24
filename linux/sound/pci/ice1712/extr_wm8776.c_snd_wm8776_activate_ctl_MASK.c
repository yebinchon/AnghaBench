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
struct snd_wm8776 {struct snd_card* card; } ;
struct snd_kcontrol_volatile {int /*<<< orphan*/  access; } ;
struct snd_kcontrol {int /*<<< orphan*/  id; struct snd_kcontrol_volatile* vd; } ;
struct snd_ctl_elem_id {int /*<<< orphan*/  iface; int /*<<< orphan*/  name; } ;
struct snd_card {int dummy; } ;
typedef  int /*<<< orphan*/  elem_id ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_CTL_ELEM_ACCESS_INACTIVE ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_IFACE_MIXER ; 
 int /*<<< orphan*/  SNDRV_CTL_EVENT_MASK_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ctl_elem_id*,int /*<<< orphan*/ ,int) ; 
 struct snd_kcontrol* FUNC1 (struct snd_card*,struct snd_ctl_elem_id*) ; 
 unsigned int FUNC2 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void FUNC5(struct snd_wm8776 *wm,
				    const char *ctl_name,
				    bool active)
{
	struct snd_card *card = wm->card;
	struct snd_kcontrol *kctl;
	struct snd_kcontrol_volatile *vd;
	struct snd_ctl_elem_id elem_id;
	unsigned int index_offset;

	FUNC0(&elem_id, 0, sizeof(elem_id));
	FUNC4(elem_id.name, ctl_name, sizeof(elem_id.name));
	elem_id.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
	kctl = FUNC1(card, &elem_id);
	if (!kctl)
		return;
	index_offset = FUNC2(kctl, &kctl->id);
	vd = &kctl->vd[index_offset];
	if (active)
		vd->access &= ~SNDRV_CTL_ELEM_ACCESS_INACTIVE;
	else
		vd->access |= SNDRV_CTL_ELEM_ACCESS_INACTIVE;
	FUNC3(card, SNDRV_CTL_EVENT_MASK_INFO, &kctl->id);
}