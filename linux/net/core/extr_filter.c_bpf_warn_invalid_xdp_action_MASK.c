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
typedef  scalar_t__ const u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*,scalar_t__ const) ; 
 scalar_t__ XDP_REDIRECT ; 

void FUNC1(u32 act)
{
	const u32 act_max = XDP_REDIRECT;

	FUNC0(1, "%s XDP return value %u, expect packet loss!\n",
		  act > act_max ? "Illegal" : "Driver unsupported",
		  act);
}