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
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct dmaengine_pcm_runtime_data {int /*<<< orphan*/  pos; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dmaengine_pcm_runtime_data* FUNC1 (struct snd_pcm_substream*) ; 

snd_pcm_uframes_t FUNC2(struct snd_pcm_substream *substream)
{
	struct dmaengine_pcm_runtime_data *prtd = FUNC1(substream);
	return FUNC0(substream->runtime, prtd->pos);
}