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
struct hdsp {int max_channels; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ HDSP_inputEnable ; 
 scalar_t__ HDSP_outputEnable ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct hdsp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hdsp*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC3 (struct hdsp *hdsp)
{
	int i;

	if (FUNC1 (hdsp, 0, 100)) {
		FUNC0(hdsp->card->dev,
			"enable_io fifo_wait failed\n");
		return -EIO;
	}

	for (i = 0; i < hdsp->max_channels; ++i) {
		FUNC2 (hdsp, HDSP_inputEnable + (4 * i), 1);
		FUNC2 (hdsp, HDSP_outputEnable + (4 * i), 1);
	}

	return 0;
}