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
struct snd_soc_pcm_runtime {struct snd_pcm* pcm; } ;
struct snd_pcm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMABRG_PREALLOC_BUFFER ; 
 int /*<<< orphan*/  DMABRG_PREALLOC_BUFFER_MAX ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_CONTINUOUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_pcm *pcm = rtd->pcm;

	/* dont use SNDRV_DMA_TYPE_DEV, since it will oops the SH kernel
	 * in MMAP mode (i.e. aplay -M)
	 */
	FUNC1(pcm,
		SNDRV_DMA_TYPE_CONTINUOUS,
		FUNC0(GFP_KERNEL),
		DMABRG_PREALLOC_BUFFER,	DMABRG_PREALLOC_BUFFER_MAX);

	return 0;
}