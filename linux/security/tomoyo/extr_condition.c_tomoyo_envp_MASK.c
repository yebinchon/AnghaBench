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
typedef  int u8 ;
struct tomoyo_path_info {char const* name; } ;
struct tomoyo_envp {scalar_t__ is_not; int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tomoyo_path_info*) ; 
 int FUNC1 (struct tomoyo_path_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(const char *env_name, const char *env_value,
			const int envc, const struct tomoyo_envp *envp,
			u8 *checked)
{
	int i;
	struct tomoyo_path_info name;
	struct tomoyo_path_info value;

	name.name = env_name;
	FUNC0(&name);
	value.name = env_value;
	FUNC0(&value);
	for (i = 0; i < envc; envp++, checked++, i++) {
		bool result;

		if (!FUNC1(&name, envp->name))
			continue;
		*checked = 1;
		if (envp->value) {
			result = FUNC1(&value,
							     envp->value);
			if (envp->is_not)
				result = !result;
		} else {
			result = true;
			if (!envp->is_not)
				result = !result;
		}
		if (!result)
			return false;
	}
	return true;
}