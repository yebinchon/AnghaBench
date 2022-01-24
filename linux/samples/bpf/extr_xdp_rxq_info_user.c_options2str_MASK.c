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
typedef  enum cfg_options_flags { ____Placeholder_cfg_options_flags } cfg_options_flags ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAIL ; 
 int NO_TOUCH ; 
 int READ_MEM ; 
 int SWAP_MAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static char* FUNC2(enum cfg_options_flags flag)
{
	if (flag == NO_TOUCH)
		return "no_touch";
	if (flag & SWAP_MAC)
		return "swapmac";
	if (flag & READ_MEM)
		return "read";
	FUNC1(stderr, "ERR: Unknown config option flags");
	FUNC0(EXIT_FAIL);
}