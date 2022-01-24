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
struct sst_pdata {struct sst_byt* dsp; } ;
struct sst_byt {int /*<<< orphan*/  ipc; int /*<<< orphan*/  dsp; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct device *dev, struct sst_pdata *pdata)
{
	struct sst_byt *byt = pdata->dsp;

	FUNC1(byt->dsp);
	FUNC2(byt->dsp);
	FUNC0(byt->dsp);
	FUNC3(&byt->ipc);
}