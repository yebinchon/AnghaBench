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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int FUNC0 (char**,int /*<<< orphan*/ *,char const**,char*) ; 
 int FUNC1 (char**,int*) ; 

__attribute__((used)) static int FUNC2(char **inp, u64 *num, const char **str, int *idx)
{
	int err = FUNC0(inp, num, str, " ");

	if (!err && *str)
		err = FUNC1(inp, idx);

	return err;
}