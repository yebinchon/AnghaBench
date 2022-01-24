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
 char** FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shell_comp_gen ; 

__attribute__((used)) static char **FUNC1(const char *buf, int start, int end)
{
	char **matches = NULL;

	if (start == 0)
		matches = FUNC0(buf, shell_comp_gen);

	return matches;
}