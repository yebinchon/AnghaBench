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
 int CMD_ERR ; 
 char* FUNC0 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(char *file)
{
	char *file_trim, *tmp;

	file_trim = FUNC0(file, " ", &tmp);
	if (file_trim == NULL)
		return CMD_ERR;

	FUNC1();

	return FUNC2(file_trim);
}