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
struct tomoyo_path_info {int dummy; } ;
struct tomoyo_envp {struct tomoyo_path_info const* value; struct tomoyo_path_info const* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct tomoyo_path_info* FUNC3 (char*) ; 
 struct tomoyo_path_info* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct tomoyo_path_info const*) ; 

__attribute__((used)) static bool FUNC6(char *left, char *right,
			      struct tomoyo_envp *envp)
{
	const struct tomoyo_path_info *name;
	const struct tomoyo_path_info *value;
	char *cp = left + FUNC1(left) - 1;

	if (*cp-- != ']' || *cp != '"')
		goto out;
	*cp = '\0';
	if (!FUNC2(left))
		goto out;
	name = FUNC4(left);
	if (!name)
		goto out;
	if (!FUNC0(right, "NULL")) {
		value = NULL;
	} else {
		value = FUNC3(right);
		if (!value) {
			FUNC5(name);
			goto out;
		}
	}
	envp->name = name;
	envp->value = value;
	return true;
out:
	return false;
}