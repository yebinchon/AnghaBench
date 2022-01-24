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
struct snd_pcm_runtime {struct ct_atc_pcm* private_data; } ;
struct ct_atc_pcm {int dummy; } ;
struct ct_atc {int (* pcm_capture_prepare ) (struct ct_atc*,struct ct_atc_pcm*) ;TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct ct_atc* FUNC1 (struct snd_pcm_substream*) ; 
 int FUNC2 (struct ct_atc*,struct ct_atc_pcm*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	int err;
	struct ct_atc *atc = FUNC1(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct ct_atc_pcm *apcm = runtime->private_data;

	err = atc->pcm_capture_prepare(atc, apcm);
	if (err < 0) {
		FUNC0(atc->card->dev,
			"Preparing pcm capture failed!!!\n");
		return err;
	}

	return 0;
}