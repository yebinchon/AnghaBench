#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_6__ {int rate_min; int rate_max; int /*<<< orphan*/  rates; } ;
struct snd_pcm_runtime {TYPE_3__ hw; } ;
struct rme96 {int wcreg; TYPE_2__* spdif_ctl; int /*<<< orphan*/  card; int /*<<< orphan*/  wcreg_spdif; int /*<<< orphan*/  wcreg_spdif_stream; int /*<<< orphan*/  lock; struct snd_pcm_substream* playback_substream; scalar_t__ iobase; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; TYPE_1__* vd; } ;
struct TYPE_4__ {int /*<<< orphan*/  access; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ RME96_INPUT_ANALOG ; 
 scalar_t__ RME96_IO_CONTROL_REGISTER ; 
 int RME96_WCR_ADAT ; 
 int RME96_WCR_MASTER ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_ACCESS_INACTIVE ; 
 int SNDRV_CTL_EVENT_MASK_INFO ; 
 int SNDRV_CTL_EVENT_MASK_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct rme96*,struct snd_pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 
 struct rme96* FUNC4 (struct snd_pcm_substream*) ; 
 int FUNC5 (struct rme96*,int*) ; 
 scalar_t__ FUNC6 (struct rme96*) ; 
 TYPE_3__ snd_rme96_playback_spdif_info ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static int
FUNC10(struct snd_pcm_substream *substream)
{
        int rate, dummy;
	struct rme96 *rme96 = FUNC4(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	FUNC3(substream);
	FUNC7(&rme96->lock);	
	if (rme96->playback_substream) {
		FUNC8(&rme96->lock);
                return -EBUSY;
        }
	rme96->wcreg &= ~RME96_WCR_ADAT;
	FUNC9(rme96->wcreg, rme96->iobase + RME96_IO_CONTROL_REGISTER);
	rme96->playback_substream = substream;
	FUNC8(&rme96->lock);

	runtime->hw = snd_rme96_playback_spdif_info;
	if (!(rme96->wcreg & RME96_WCR_MASTER) &&
            FUNC6(rme96) != RME96_INPUT_ANALOG &&
	    (rate = FUNC5(rme96, &dummy)) > 0)
	{
                /* slave clock */
                runtime->hw.rates = FUNC2(rate);
                runtime->hw.rate_min = rate;
                runtime->hw.rate_max = rate;
	}        
	FUNC0(rme96, runtime);

	rme96->wcreg_spdif_stream = rme96->wcreg_spdif;
	rme96->spdif_ctl->vd[0].access &= ~SNDRV_CTL_ELEM_ACCESS_INACTIVE;
	FUNC1(rme96->card, SNDRV_CTL_EVENT_MASK_VALUE |
		       SNDRV_CTL_EVENT_MASK_INFO, &rme96->spdif_ctl->id);
	return 0;
}