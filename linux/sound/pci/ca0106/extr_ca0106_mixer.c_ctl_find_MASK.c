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
struct snd_ctl_elem_id {int /*<<< orphan*/  iface; int /*<<< orphan*/  name; } ;
struct snd_card {int dummy; } ;
typedef  int /*<<< orphan*/  sid ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_CTL_ELEM_IFACE_MIXER ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ctl_elem_id*,int /*<<< orphan*/ ,int) ; 
 struct snd_kcontrol* FUNC1 (struct snd_card*,struct snd_ctl_elem_id*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static struct snd_kcontrol *FUNC3(struct snd_card *card, const char *name)
{
	struct snd_ctl_elem_id sid;
	FUNC0(&sid, 0, sizeof(sid));
	/* FIXME: strcpy is bad. */
	FUNC2(sid.name, name);
	sid.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
	return FUNC1(card, &sid);
}