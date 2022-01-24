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
struct snd_pcm_substream {int dummy; } ;
struct dmaengine_pcm_runtime_data {scalar_t__ pos; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 struct dmaengine_pcm_runtime_data* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static void FUNC4(void *arg)
{
	struct snd_pcm_substream *substream = arg;
	struct dmaengine_pcm_runtime_data *prtd = FUNC3(substream);

	prtd->pos += FUNC1(substream);
	if (prtd->pos >= FUNC0(substream))
		prtd->pos = 0;

	FUNC2(substream);
}