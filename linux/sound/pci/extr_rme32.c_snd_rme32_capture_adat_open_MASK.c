#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_3__ {int rate_min; int rate_max; int /*<<< orphan*/  rates; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct rme32 {int /*<<< orphan*/  lock; struct snd_pcm_substream* capture_substream; scalar_t__ fullduplex_mode; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*) ; 
 struct rme32* FUNC2 (struct snd_pcm_substream*) ; 
 TYPE_1__ snd_rme32_adat_fd_info ; 
 TYPE_1__ snd_rme32_adat_info ; 
 int FUNC3 (struct rme32*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct rme32*,struct snd_pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct snd_pcm_substream *substream)
{
	int isadat, rate;
	struct rme32 *rme32 = FUNC2(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	if (rme32->fullduplex_mode)
		runtime->hw = snd_rme32_adat_fd_info;
	else
		runtime->hw = snd_rme32_adat_info;
	if ((rate = FUNC3(rme32, &isadat)) > 0) {
		if (!isadat) {
			return -EIO;
		}
                runtime->hw.rates = FUNC0(rate);
                runtime->hw.rate_min = rate;
                runtime->hw.rate_max = rate;
        }

	FUNC1(substream);
        
	FUNC5(&rme32->lock);	
	if (rme32->capture_substream != NULL) {
		FUNC6(&rme32->lock);
		return -EBUSY;
        }
	rme32->capture_substream = substream;
	FUNC6(&rme32->lock);

	FUNC4(rme32, runtime);
	return 0;
}