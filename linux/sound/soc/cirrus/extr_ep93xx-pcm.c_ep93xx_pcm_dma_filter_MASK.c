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
struct ep93xx_dma_data {scalar_t__ direction; } ;
struct dma_chan {struct ep93xx_dma_data* private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dma_chan*) ; 

__attribute__((used)) static bool FUNC1(struct dma_chan *chan, void *filter_param)
{
	struct ep93xx_dma_data *data = filter_param;

	if (data->direction == FUNC0(chan)) {
		chan->private = data;
		return true;
	}

	return false;
}