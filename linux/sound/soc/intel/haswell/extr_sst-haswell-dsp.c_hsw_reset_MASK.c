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
struct sst_dsp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SST_CSR ; 
 int SST_CSR_RST ; 
 int SST_CSR_STALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sst_dsp*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(struct sst_dsp *sst)
{
	/* put DSP into reset and stall */
	FUNC1(sst, SST_CSR,
		SST_CSR_RST | SST_CSR_STALL,
		SST_CSR_RST | SST_CSR_STALL);

	/* keep in reset for 10ms */
	FUNC0(10);

	/* take DSP out of reset and keep stalled for FW loading */
	FUNC1(sst, SST_CSR,
		SST_CSR_RST | SST_CSR_STALL, SST_CSR_STALL);
}