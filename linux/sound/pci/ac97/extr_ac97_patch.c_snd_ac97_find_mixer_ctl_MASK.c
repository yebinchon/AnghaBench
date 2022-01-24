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
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_id {int /*<<< orphan*/  name; int /*<<< orphan*/  iface; } ;
struct snd_ac97 {TYPE_1__* bus; } ;
typedef  int /*<<< orphan*/  id ;
struct TYPE_2__ {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_CTL_ELEM_IFACE_MIXER ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ctl_elem_id*,int /*<<< orphan*/ ,int) ; 
 struct snd_kcontrol* FUNC1 (int /*<<< orphan*/ ,struct snd_ctl_elem_id*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static struct snd_kcontrol *FUNC3(struct snd_ac97 *ac97,
						    const char *name)
{
	struct snd_ctl_elem_id id;
	FUNC0(&id, 0, sizeof(id));
	id.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
	FUNC2(id.name, name);
	return FUNC1(ac97->bus->card, &id);
}