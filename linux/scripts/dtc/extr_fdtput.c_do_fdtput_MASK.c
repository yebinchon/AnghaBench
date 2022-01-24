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
struct display_info {int oper; int /*<<< orphan*/  auto_path; } ;

/* Variables and functions */
#define  OPER_CREATE_NODE 129 
#define  OPER_WRITE_PROP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,char*) ; 
 int FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct display_info*,char**,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char*,int) ; 
 char* FUNC6 (char const*) ; 
 int FUNC7 (char const*,char*) ; 

__attribute__((used)) static int FUNC8(struct display_info *disp, const char *filename,
		    char **arg, int arg_count)
{
	char *value;
	char *blob;
	int len, ret = 0;

	blob = FUNC6(filename);
	if (!blob)
		return -1;

	switch (disp->oper) {
	case OPER_WRITE_PROP:
		/*
		 * Convert the arguments into a single binary value, then
		 * store them into the property.
		 */
		FUNC0(arg_count >= 2);
		if (disp->auto_path && FUNC2(blob, *arg))
			return -1;
		if (FUNC3(disp, arg + 2, arg_count - 2, &value, &len) ||
			FUNC5(blob, *arg, arg[1], value, len))
			ret = -1;
		break;
	case OPER_CREATE_NODE:
		for (; ret >= 0 && arg_count--; arg++) {
			if (disp->auto_path)
				ret = FUNC2(blob, *arg);
			else
				ret = FUNC1(blob, *arg);
		}
		break;
	}
	if (ret >= 0)
		ret = FUNC7(filename, blob);

	FUNC4(blob);
	return ret;
}