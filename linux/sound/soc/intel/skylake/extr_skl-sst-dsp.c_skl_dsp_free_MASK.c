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
struct sst_dsp {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  SKL_DSP_CORE0_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sst_dsp*) ; 
 int /*<<< orphan*/  FUNC1 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sst_dsp*) ; 
 int /*<<< orphan*/  FUNC3 (struct sst_dsp*) ; 

void FUNC4(struct sst_dsp *dsp)
{
	FUNC2(dsp);

	FUNC0(dsp->irq, dsp);
	FUNC3(dsp);
	FUNC1(dsp, SKL_DSP_CORE0_MASK);
}