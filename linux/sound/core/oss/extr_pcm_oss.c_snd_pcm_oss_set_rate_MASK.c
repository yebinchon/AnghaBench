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
struct TYPE_2__ {int rate; int params; } ;
struct snd_pcm_runtime {TYPE_1__ oss; } ;
struct snd_pcm_oss_file {struct snd_pcm_substream** streams; } ;

/* Variables and functions */
 int FUNC0 (struct snd_pcm_runtime*) ; 
 int FUNC1 (struct snd_pcm_oss_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_runtime*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_oss_file *pcm_oss_file, int rate)
{
	int idx;

	for (idx = 1; idx >= 0; --idx) {
		struct snd_pcm_substream *substream = pcm_oss_file->streams[idx];
		struct snd_pcm_runtime *runtime;
		int err;

		if (substream == NULL)
			continue;
		runtime = substream->runtime;
		if (rate < 1000)
			rate = 1000;
		else if (rate > 192000)
			rate = 192000;
		err = FUNC0(runtime);
		if (err < 0)
			return err;
		if (runtime->oss.rate != rate) {
			runtime->oss.params = 1;
			runtime->oss.rate = rate;
		}
		FUNC2(runtime);
	}
	return FUNC1(pcm_oss_file);
}