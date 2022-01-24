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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static int FUNC2(char *file_data_in, char *file_ctx_in)
{
	if (file_data_in && file_ctx_in &&
	    !FUNC1(file_data_in, "-") && !FUNC1(file_ctx_in, "-")) {
		FUNC0("cannot use standard input for both data_in and ctx_in");
		return -1;
	}

	return 0;
}