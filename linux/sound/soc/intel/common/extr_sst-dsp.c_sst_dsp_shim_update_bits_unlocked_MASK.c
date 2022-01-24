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
typedef  unsigned int u32 ;
struct sst_dsp {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct sst_dsp*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct sst_dsp*,unsigned int,unsigned int) ; 

int FUNC2(struct sst_dsp *sst, u32 offset,
				u32 mask, u32 value)
{
	bool change;
	unsigned int old, new;
	u32 ret;

	ret = FUNC0(sst, offset);

	old = ret;
	new = (old & (~mask)) | (value & mask);

	change = (old != new);
	if (change)
		FUNC1(sst, offset, new);

	return change;
}