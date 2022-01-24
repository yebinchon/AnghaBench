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
struct snd_pcm_runtime {struct imx_pcm_runtime_data* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  function; } ;
struct imx_pcm_runtime_data {TYPE_1__ hrt; int /*<<< orphan*/  capturing; int /*<<< orphan*/  playing; struct snd_pcm_substream* substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct imx_pcm_runtime_data*) ; 
 struct imx_pcm_runtime_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_hrtimer_callback ; 
 int /*<<< orphan*/  snd_imx_hardware ; 
 int FUNC4 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct imx_pcm_runtime_data *iprtd;
	int ret;

	iprtd = FUNC3(sizeof(*iprtd), GFP_KERNEL);
	if (iprtd == NULL)
		return -ENOMEM;
	runtime->private_data = iprtd;

	iprtd->substream = substream;

	FUNC0(&iprtd->playing, 0);
	FUNC0(&iprtd->capturing, 0);
	FUNC1(&iprtd->hrt, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
	iprtd->hrt.function = snd_hrtimer_callback;

	ret = FUNC4(substream->runtime,
			SNDRV_PCM_HW_PARAM_PERIODS);
	if (ret < 0) {
		FUNC2(iprtd);
		return ret;
	}

	FUNC5(substream, &snd_imx_hardware);
	return 0;
}