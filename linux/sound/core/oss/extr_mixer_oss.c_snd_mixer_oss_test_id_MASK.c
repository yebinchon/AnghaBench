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
struct snd_mixer_oss {struct snd_card* card; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_id {int index; int /*<<< orphan*/  name; int /*<<< orphan*/  iface; } ;
struct snd_card {int dummy; } ;
typedef  int /*<<< orphan*/  id ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_CTL_ELEM_IFACE_MIXER ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ctl_elem_id*,int /*<<< orphan*/ ,int) ; 
 struct snd_kcontrol* FUNC1 (struct snd_card*,struct snd_ctl_elem_id*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static struct snd_kcontrol *FUNC3(struct snd_mixer_oss *mixer, const char *name, int index)
{
	struct snd_card *card = mixer->card;
	struct snd_ctl_elem_id id;
	
	FUNC0(&id, 0, sizeof(id));
	id.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
	FUNC2(id.name, name, sizeof(id.name));
	id.index = index;
	return FUNC1(card, &id);
}