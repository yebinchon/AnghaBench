#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* dma_adb; } ;
typedef  TYPE_1__ vortex_t ;
struct TYPE_6__ {int* resources; } ;
typedef  TYPE_2__ stream_t ;

/* Variables and functions */
 int NR_SRC ; 
 int FUNC0 (int,unsigned int) ; 
 size_t VORTEX_RESOURCE_SRC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int) ; 

__attribute__((used)) static void
FUNC2(vortex_t * vortex, int adbdma, unsigned int rate, int dir)
{
	stream_t *stream = &(vortex->dma_adb[adbdma]);
	int i, cvrt;

	/* dir=1:play ; dir=0:rec */
	if (dir)
		cvrt = FUNC0(rate, 48000);
	else
		cvrt = FUNC0(48000, rate);

	/* Setup SRC's */
	for (i = 0; i < NR_SRC; i++) {
		if (stream->resources[VORTEX_RESOURCE_SRC] & (1 << i))
			FUNC1(vortex, i, cvrt, 0, 0, i, dir, 1, cvrt, dir);
	}
}