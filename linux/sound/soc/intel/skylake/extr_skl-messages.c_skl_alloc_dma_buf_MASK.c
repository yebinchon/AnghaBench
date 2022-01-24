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
struct snd_dma_buffer {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int FUNC0 (int /*<<< orphan*/ ,struct device*,size_t,struct snd_dma_buffer*) ; 

__attribute__((used)) static int FUNC1(struct device *dev,
		struct snd_dma_buffer *dmab, size_t size)
{
	return FUNC0(SNDRV_DMA_TYPE_DEV, dev, size, dmab);
}