#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct fsl_asrc_pair* private_data; } ;
struct fsl_asrc_pair {scalar_t__ pos; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static void FUNC3(void *arg)
{
	struct snd_pcm_substream *substream = arg;
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct fsl_asrc_pair *pair = runtime->private_data;

	pair->pos += FUNC1(substream);
	if (pair->pos >= FUNC0(substream))
		pair->pos = 0;

	FUNC2(substream);
}