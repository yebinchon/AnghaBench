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
struct snd_pcm_substream {int dummy; } ;
struct rme96 {int wcreg; TYPE_2__* spdif_ctl; int /*<<< orphan*/  card; int /*<<< orphan*/  lock; scalar_t__ playback_periodsize; int /*<<< orphan*/ * playback_substream; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; TYPE_1__* vd; } ;
struct TYPE_3__ {int /*<<< orphan*/  access; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rme96*) ; 
 int /*<<< orphan*/  RME96_STOP_PLAYBACK ; 
 int RME96_WCR_ADAT ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_ACCESS_INACTIVE ; 
 int SNDRV_CTL_EVENT_MASK_INFO ; 
 int SNDRV_CTL_EVENT_MASK_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct rme96* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct rme96*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct snd_pcm_substream *substream)
{
	struct rme96 *rme96 = FUNC2(substream);
	int spdif = 0;

	FUNC4(&rme96->lock);	
	if (FUNC0(rme96)) {
		FUNC3(rme96, RME96_STOP_PLAYBACK);
	}
	rme96->playback_substream = NULL;
	rme96->playback_periodsize = 0;
	spdif = (rme96->wcreg & RME96_WCR_ADAT) == 0;
	FUNC5(&rme96->lock);
	if (spdif) {
		rme96->spdif_ctl->vd[0].access |= SNDRV_CTL_ELEM_ACCESS_INACTIVE;
		FUNC1(rme96->card, SNDRV_CTL_EVENT_MASK_VALUE |
			       SNDRV_CTL_EVENT_MASK_INFO, &rme96->spdif_ctl->id);
	}
	return 0;
}