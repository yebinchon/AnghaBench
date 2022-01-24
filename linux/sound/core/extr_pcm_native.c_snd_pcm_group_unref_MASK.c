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
struct snd_pcm_substream {TYPE_1__* pcm; } ;
struct snd_pcm_group {int /*<<< orphan*/  refs; } ;
struct TYPE_2__ {int /*<<< orphan*/  nonatomic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_group*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_group*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_pcm_group *group,
				struct snd_pcm_substream *substream)
{
	bool do_free;

	if (!group)
		return;
	do_free = FUNC1(&group->refs);
	FUNC2(group, substream->pcm->nonatomic);
	if (do_free)
		FUNC0(group);
}