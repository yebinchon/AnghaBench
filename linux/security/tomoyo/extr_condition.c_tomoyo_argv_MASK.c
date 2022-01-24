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
struct tomoyo_argv {unsigned int const index; scalar_t__ is_not; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tomoyo_path_info*) ; 
 int FUNC1 (struct tomoyo_path_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(const unsigned int index, const char *arg_ptr,
			const int argc, const struct tomoyo_argv *argv,
			u8 *checked)
{
	int i;
	struct tomoyo_path_info arg;

	arg.name = arg_ptr;
	for (i = 0; i < argc; argv++, checked++, i++) {
		bool result;

		if (index != argv->index)
			continue;
		*checked = 1;
		FUNC0(&arg);
		result = FUNC1(&arg, argv->value);
		if (argv->is_not)
			result = !result;
		if (!result)
			return false;
	}
	return true;
}