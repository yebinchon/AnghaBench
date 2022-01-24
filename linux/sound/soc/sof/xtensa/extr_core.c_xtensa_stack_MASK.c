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
struct TYPE_2__ {int stackptr; } ;
struct sof_ipc_dsp_oops_xtensa {TYPE_1__ plat_hdr; } ;
struct snd_sof_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int,int,unsigned char*,int,int) ; 

__attribute__((used)) static void FUNC2(struct snd_sof_dev *sdev, void *oops, u32 *stack,
			 u32 stack_words)
{
	struct sof_ipc_dsp_oops_xtensa *xoops = oops;
	u32 stack_ptr = xoops->plat_hdr.stackptr;
	/* 4 * 8chars + 3 ws + 1 terminating NUL */
	unsigned char buf[4 * 8 + 3 + 1];
	int i;

	FUNC0(sdev->dev, "stack dump from 0x%8.8x\n", stack_ptr);

	/*
	 * example output:
	 * 0x0049fbb0: 8000f2d0 0049fc00 6f6c6c61 00632e63
	 */
	for (i = 0; i < stack_words; i += 4) {
		FUNC1(stack + i * 4, 16, 16, 4,
				   buf, sizeof(buf), false);
		FUNC0(sdev->dev, "0x%08x: %s\n", stack_ptr + i, buf);
	}
}