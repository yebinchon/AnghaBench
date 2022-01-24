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
typedef  int u32 ;
struct snd_pcm_runtime {int buffer_size; scalar_t__ dma_area; } ;
struct isight {int total_samples; int buffer_pointer; TYPE_1__* pcm; int /*<<< orphan*/  pcm_running; } ;
struct TYPE_2__ {struct snd_pcm_runtime* runtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isight*) ; 
 int /*<<< orphan*/  FUNC2 (struct isight*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct isight *isight, unsigned int total)
{
	struct snd_pcm_runtime *runtime;
	u32 dropped;
	unsigned int count1;

	if (!FUNC0(isight->pcm_running))
		return;

	runtime = isight->pcm->runtime;
	dropped = total - isight->total_samples;
	if (dropped < runtime->buffer_size) {
		if (isight->buffer_pointer + dropped <= runtime->buffer_size) {
			FUNC3(runtime->dma_area + isight->buffer_pointer * 4,
			       0, dropped * 4);
		} else {
			count1 = runtime->buffer_size - isight->buffer_pointer;
			FUNC3(runtime->dma_area + isight->buffer_pointer * 4,
			       0, count1 * 4);
			FUNC3(runtime->dma_area, 0, (dropped - count1) * 4);
		}
		FUNC2(isight, dropped);
	} else {
		FUNC1(isight);
	}
}