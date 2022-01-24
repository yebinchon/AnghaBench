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
struct dirent {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC3(struct dirent *script_dirent, const char *suffix)
{
	char *script_root, *str;

	script_root = FUNC2(script_dirent->d_name);
	if (!script_root)
		return NULL;

	str = (char *)FUNC0(script_root, suffix);
	if (!str) {
		FUNC1(script_root);
		return NULL;
	}

	*str = '\0';
	return script_root;
}