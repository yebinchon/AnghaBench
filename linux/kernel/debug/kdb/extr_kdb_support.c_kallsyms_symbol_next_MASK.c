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
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 char* FUNC0 (scalar_t__*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 int FUNC3 (char*,char const*,int) ; 

int FUNC4(char *prefix_name, int flag, int buf_size)
{
	int prefix_len = FUNC1(prefix_name);
	static loff_t pos;
	const char *name;

	if (!flag)
		pos = 0;

	while ((name = FUNC0(&pos))) {
		if (!FUNC2(name, prefix_name, prefix_len))
			return FUNC3(prefix_name, name, buf_size);
	}
	return 0;
}