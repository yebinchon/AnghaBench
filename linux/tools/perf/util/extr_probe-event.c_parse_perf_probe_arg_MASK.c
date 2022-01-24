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
struct perf_probe_arg_field {int ref; char* name; struct perf_probe_arg_field* next; int /*<<< orphan*/  index; } ;
struct perf_probe_arg {int user_access; char* var; int /*<<< orphan*/ * name; struct perf_probe_arg_field* field; int /*<<< orphan*/ * type; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* FUNC3 (char*,char) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 void* FUNC5 (char*) ; 
 void* FUNC6 (char*,int) ; 
 char* FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct perf_probe_arg_field* FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(char *str, struct perf_probe_arg *arg)
{
	char *tmp, *goodname;
	struct perf_probe_arg_field **fieldp;

	FUNC1("parsing arg: %s into ", str);

	tmp = FUNC3(str, '=');
	if (tmp) {
		arg->name = FUNC6(str, tmp - str);
		if (arg->name == NULL)
			return -ENOMEM;
		FUNC1("name:%s ", arg->name);
		str = tmp + 1;
	}

	tmp = FUNC3(str, '@');
	if (tmp && tmp != str && FUNC4(tmp + 1, "user")) { /* user attr */
		if (!FUNC9()) {
			FUNC2("ftrace does not support user access\n");
			return -EINVAL;
		}
		*tmp = '\0';
		arg->user_access = true;
		FUNC1("user_access ");
	}

	tmp = FUNC3(str, ':');
	if (tmp) {	/* Type setting */
		*tmp = '\0';
		arg->type = FUNC5(tmp + 1);
		if (arg->type == NULL)
			return -ENOMEM;
		FUNC1("type:%s ", arg->type);
	}

	tmp = FUNC7(str, "-.[");
	if (!FUNC0(str) || !tmp) {
		/* A variable, register, symbol or special value */
		arg->var = FUNC5(str);
		if (arg->var == NULL)
			return -ENOMEM;
		FUNC1("%s\n", arg->var);
		return 0;
	}

	/* Structure fields or array element */
	arg->var = FUNC6(str, tmp - str);
	if (arg->var == NULL)
		return -ENOMEM;
	goodname = arg->var;
	FUNC1("%s, ", arg->var);
	fieldp = &arg->field;

	do {
		*fieldp = FUNC10(sizeof(struct perf_probe_arg_field));
		if (*fieldp == NULL)
			return -ENOMEM;
		if (*tmp == '[') {	/* Array */
			str = tmp;
			(*fieldp)->index = FUNC8(str + 1, &tmp, 0);
			(*fieldp)->ref = true;
			if (*tmp != ']' || tmp == str + 1) {
				FUNC2("Array index must be a"
						" number.\n");
				return -EINVAL;
			}
			tmp++;
			if (*tmp == '\0')
				tmp = NULL;
		} else {		/* Structure */
			if (*tmp == '.') {
				str = tmp + 1;
				(*fieldp)->ref = false;
			} else if (tmp[1] == '>') {
				str = tmp + 2;
				(*fieldp)->ref = true;
			} else {
				FUNC2("Argument parse error: %s\n",
					       str);
				return -EINVAL;
			}
			tmp = FUNC7(str, "-.[");
		}
		if (tmp) {
			(*fieldp)->name = FUNC6(str, tmp - str);
			if ((*fieldp)->name == NULL)
				return -ENOMEM;
			if (*str != '[')
				goodname = (*fieldp)->name;
			FUNC1("%s(%d), ", (*fieldp)->name, (*fieldp)->ref);
			fieldp = &(*fieldp)->next;
		}
	} while (tmp);
	(*fieldp)->name = FUNC5(str);
	if ((*fieldp)->name == NULL)
		return -ENOMEM;
	if (*str != '[')
		goodname = (*fieldp)->name;
	FUNC1("%s(%d)\n", (*fieldp)->name, (*fieldp)->ref);

	/* If no name is specified, set the last field name (not array index)*/
	if (!arg->name) {
		arg->name = FUNC5(goodname);
		if (arg->name == NULL)
			return -ENOMEM;
	}
	return 0;
}