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
struct snd_sof_route {int /*<<< orphan*/  list; struct snd_sof_route* private; } ;
struct snd_soc_dobj {struct snd_sof_route* private; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_sof_route*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_component *scomp,
			    struct snd_soc_dobj *dobj)
{
	struct snd_sof_route *sroute;

	sroute = dobj->private;
	if (!sroute)
		return 0;

	/* free sroute and its private data */
	FUNC0(sroute->private);
	FUNC1(&sroute->list);
	FUNC0(sroute);

	return 0;
}