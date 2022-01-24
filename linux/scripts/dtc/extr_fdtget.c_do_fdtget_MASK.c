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
struct display_info {scalar_t__ default_val; } ;

/* Variables and functions */
 int FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (char*,struct display_info*,int,char const*) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(struct display_info *disp, const char *filename,
		     char **arg, int arg_count, int args_per_step)
{
	char *blob;
	const char *prop;
	int i, node;

	blob = FUNC4(filename);
	if (!blob)
		return -1;

	for (i = 0; i + args_per_step <= arg_count; i += args_per_step) {
		node = FUNC0(blob, arg[i]);
		if (node < 0) {
			if (disp->default_val) {
				FUNC1(disp->default_val);
				continue;
			} else {
				FUNC2(arg[i], node);
				return -1;
			}
		}
		prop = args_per_step == 1 ? NULL : arg[i + 1];

		if (FUNC3(blob, disp, node, prop))
			return -1;
	}
	return 0;
}