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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int rate_min; int rate_max; int /*<<< orphan*/  rates; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct rme96 {int /*<<< orphan*/  lock; struct snd_pcm_substream* capture_substream; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 scalar_t__ RME96_INPUT_ANALOG ; 
 int /*<<< orphan*/  FUNC0 (struct rme96*,struct snd_pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 struct rme96* FUNC3 (struct snd_pcm_substream*) ; 
 int FUNC4 (struct rme96*,int*) ; 
 TYPE_1__ snd_rme96_capture_spdif_info ; 
 scalar_t__ FUNC5 (struct rme96*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct snd_pcm_substream *substream)
{
        int isadat, rate;
	struct rme96 *rme96 = FUNC3(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	FUNC2(substream);
	runtime->hw = snd_rme96_capture_spdif_info;
        if (FUNC5(rme96) != RME96_INPUT_ANALOG &&
            (rate = FUNC4(rme96, &isadat)) > 0)
        {
                if (isadat) {
                        return -EIO;
                }
                runtime->hw.rates = FUNC1(rate);
                runtime->hw.rate_min = rate;
                runtime->hw.rate_max = rate;
        }
        
	FUNC6(&rme96->lock);
	if (rme96->capture_substream) {
		FUNC7(&rme96->lock);
                return -EBUSY;
        }
	rme96->capture_substream = substream;
	FUNC7(&rme96->lock);
	
	FUNC0(rme96, runtime);
	return 0;
}