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
typedef  int /*<<< orphan*/  u32 ;
struct sst_dsp {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sst_dsp*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct sst_dsp *sst, u32 offset,
				u64 mask, u64 value)
{
	bool change;
	u64 old, new;

	old = FUNC0(sst, offset);

	new = (old & (~mask)) | (value & mask);

	change = (old != new);
	if (change)
		FUNC1(sst, offset, new);

	return change;
}