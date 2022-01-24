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
typedef  int /*<<< orphan*/  root_dir ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 char* FUNC1 (char*,char) ; 
 int FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(const char *proc_dir, char *sbuildid)
{
	char root_dir[PATH_MAX];
	char *p;

	FUNC0(root_dir, proc_dir, sizeof(root_dir));

	p = FUNC1(root_dir, '/');
	if (!p)
		return -1;
	*p = '\0';
	return FUNC2(root_dir, sbuildid);
}