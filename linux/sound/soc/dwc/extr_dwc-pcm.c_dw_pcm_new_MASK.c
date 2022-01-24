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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  pcm; } ;
struct TYPE_2__ {size_t buffer_bytes_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_CONTINUOUS ; 
 TYPE_1__ dw_pcm_hardware ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_pcm_runtime *rtd)
{
	size_t size = dw_pcm_hardware.buffer_bytes_max;

	FUNC1(rtd->pcm,
			SNDRV_DMA_TYPE_CONTINUOUS,
			FUNC0(GFP_KERNEL), size, size);
	return 0;
}