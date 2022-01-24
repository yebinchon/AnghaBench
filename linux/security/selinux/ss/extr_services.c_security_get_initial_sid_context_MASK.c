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
typedef  size_t u32 ;

/* Variables and functions */
 size_t SECINITSID_NUM ; 
 char const** initial_sid_to_string ; 
 scalar_t__ FUNC0 (int) ; 

const char *FUNC1(u32 sid)
{
	if (FUNC0(sid > SECINITSID_NUM))
		return NULL;
	return initial_sid_to_string[sid];
}