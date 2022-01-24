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
typedef  int u64 ;
struct hdsp {int dds_value; } ;

/* Variables and functions */
 int DDS_NUMERATOR ; 
 int /*<<< orphan*/  HDSP_freqReg ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hdsp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct hdsp *hdsp, int rate)
{
	u64 n;

	if (rate >= 112000)
		rate /= 4;
	else if (rate >= 56000)
		rate /= 2;

	n = DDS_NUMERATOR;
	n = FUNC0(n, rate);
	/* n should be less than 2^32 for being written to FREQ register */
	FUNC2(n >> 32);
	/* HDSP_freqReg and HDSP_resetPointer are the same, so keep the DDS
	   value to write it after a reset */
	hdsp->dds_value = n;
	FUNC1(hdsp, HDSP_freqReg, hdsp->dds_value);
}