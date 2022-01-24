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
typedef  enum wm0010_state { ____Placeholder_wm0010_state } wm0010_state ;

/* Variables and functions */
 int FUNC0 (char const* const*) ; 

__attribute__((used)) static const char *FUNC1(enum wm0010_state state)
{
	static const char * const state_to_str[] = {
		"Power off",
		"Out of reset",
		"Boot ROM",
		"Stage2",
		"Firmware"
	};

	if (state < 0 || state >= FUNC0(state_to_str))
		return "null";
	return state_to_str[state];
}