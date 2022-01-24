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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 

void FUNC4(u32 *state, u8 *stream, int nrounds)
{
	u32 x[16];
	int i;

	FUNC2(x, state, 64);

	FUNC1(x, nrounds);

	for (i = 0; i < FUNC0(x); i++)
		FUNC3(x[i] + state[i], &stream[i * sizeof(u32)]);

	state[12]++;
}