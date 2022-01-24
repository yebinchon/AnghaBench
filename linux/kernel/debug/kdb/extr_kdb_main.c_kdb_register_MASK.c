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
typedef  int /*<<< orphan*/  kdb_func_t ;

/* Variables and functions */
 int FUNC0 (char*,int /*<<< orphan*/ ,char*,char*,short,int /*<<< orphan*/ ) ; 

int FUNC1(char *cmd,
	     kdb_func_t func,
	     char *usage,
	     char *help,
	     short minlen)
{
	return FUNC0(cmd, func, usage, help, minlen, 0);
}