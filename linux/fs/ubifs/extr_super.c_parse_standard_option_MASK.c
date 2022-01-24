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

/* Variables and functions */
 int SB_SYNCHRONOUS ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static int FUNC2(const char *option)
{

	FUNC0("UBIFS: parse %s\n", option);
	if (!FUNC1(option, "sync"))
		return SB_SYNCHRONOUS;
	return 0;
}