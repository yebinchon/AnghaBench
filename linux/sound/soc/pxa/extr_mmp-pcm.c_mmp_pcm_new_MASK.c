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
struct snd_soc_pcm_runtime {struct snd_pcm* pcm; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm {TYPE_1__* streams; } ;
struct TYPE_2__ {struct snd_pcm_substream* substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pcm*) ; 
 int FUNC1 (struct snd_pcm_substream*,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_pcm_substream *substream;
	struct snd_pcm *pcm = rtd->pcm;
	int ret = 0, stream;

	for (stream = 0; stream < 2; stream++) {
		substream = pcm->streams[stream].substream;

		ret = FUNC1(substream,	stream);
		if (ret)
			goto err;
	}

	return 0;

err:
	FUNC0(pcm);
	return ret;
}