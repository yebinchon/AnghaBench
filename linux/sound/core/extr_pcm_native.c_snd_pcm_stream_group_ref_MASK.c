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
struct snd_pcm_substream {struct snd_pcm_group* group; TYPE_1__* pcm; } ;
struct snd_pcm_group {int /*<<< orphan*/  lock; int /*<<< orphan*/  mutex; int /*<<< orphan*/  refs; } ;
struct TYPE_2__ {int nonatomic; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_group*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_group*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_substream*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct snd_pcm_group *
FUNC8(struct snd_pcm_substream *substream)
{
	bool nonatomic = substream->pcm->nonatomic;
	struct snd_pcm_group *group;
	bool trylock;

	for (;;) {
		if (!FUNC4(substream))
			return NULL;
		group = substream->group;
		/* block freeing the group object */
		FUNC1(&group->refs);

		trylock = nonatomic ? FUNC0(&group->mutex) :
			FUNC7(&group->lock);
		if (trylock)
			break; /* OK */

		/* re-lock for avoiding ABBA deadlock */
		FUNC6(substream);
		FUNC2(group, nonatomic);
		FUNC5(substream);

		/* check the group again; the above opens a small race window */
		if (substream->group == group)
			break; /* OK */
		/* group changed, try again */
		FUNC3(group, substream);
	}
	return group;
}