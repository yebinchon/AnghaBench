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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static bool FUNC2(char **argv, int i)
{
	if (!FUNC1(argv[i], "0"))
		return false;
	else if (!FUNC1(argv[i], "1"))
		return true;
	else {
		FUNC0("wrong argv[%d]\n", i);
		return false;
	}
}