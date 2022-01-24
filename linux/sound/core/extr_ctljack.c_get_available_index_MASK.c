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
struct snd_ctl_elem_id {int index; scalar_t__ numid; int /*<<< orphan*/  name; int /*<<< orphan*/  iface; } ;
struct snd_card {int dummy; } ;
typedef  int /*<<< orphan*/  sid ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_CTL_ELEM_IFACE_CARD ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ctl_elem_id*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct snd_card*,struct snd_ctl_elem_id*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC3(struct snd_card *card, const char *name)
{
	struct snd_ctl_elem_id sid;

	FUNC0(&sid, 0, sizeof(sid));

	sid.index = 0;
	sid.iface = SNDRV_CTL_ELEM_IFACE_CARD;
	FUNC2(sid.name, name, sizeof(sid.name));

	while (FUNC1(card, &sid)) {
		sid.index++;
		/* reset numid; otherwise snd_ctl_find_id() hits this again */
		sid.numid = 0;
	}

	return sid.index;
}