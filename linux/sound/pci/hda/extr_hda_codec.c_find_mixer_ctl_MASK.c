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
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_id {int device; int index; int /*<<< orphan*/  name; int /*<<< orphan*/  iface; } ;
struct hda_codec {int /*<<< orphan*/  card; } ;
typedef  int /*<<< orphan*/  id ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_CTL_ELEM_IFACE_MIXER ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ctl_elem_id*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 struct snd_kcontrol* FUNC2 (int /*<<< orphan*/ ,struct snd_ctl_elem_id*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static struct snd_kcontrol *
FUNC5(struct hda_codec *codec, const char *name, int dev, int idx)
{
	struct snd_ctl_elem_id id;
	FUNC0(&id, 0, sizeof(id));
	id.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
	id.device = dev;
	id.index = idx;
	if (FUNC1(FUNC4(name) >= sizeof(id.name)))
		return NULL;
	FUNC3(id.name, name);
	return FUNC2(codec->card, &id);
}