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
typedef  int /*<<< orphan*/  substring_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,int,unsigned long*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(substring_t args[], unsigned long *option)
{
	int rc;
	char *string;

	string = FUNC2(args);
	if (string == NULL)
		return -ENOMEM;
	rc = FUNC1(string, 10, option);
	FUNC0(string);

	return rc;
}