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
struct strbuf {int dummy; } ;
struct perf_probe_arg_field {char* name; struct perf_probe_arg_field* next; scalar_t__ ref; } ;
struct perf_probe_arg {char* var; int /*<<< orphan*/  type; scalar_t__ name; struct perf_probe_arg_field* field; } ;

/* Variables and functions */
 int FUNC0 (struct strbuf*,char*,char*,...) ; 
 int FUNC1 (struct strbuf*,char*) ; 
 char* FUNC2 (struct strbuf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 

char *FUNC5(struct perf_probe_arg *pa)
{
	struct perf_probe_arg_field *field = pa->field;
	struct strbuf buf;
	char *ret = NULL;
	int err;

	if (FUNC3(&buf, 64) < 0)
		return NULL;

	if (pa->name && pa->var)
		err = FUNC0(&buf, "%s=%s", pa->name, pa->var);
	else
		err = FUNC1(&buf, pa->name ?: pa->var);
	if (err)
		goto out;

	while (field) {
		if (field->name[0] == '[')
			err = FUNC1(&buf, field->name);
		else
			err = FUNC0(&buf, "%s%s", field->ref ? "->" : ".",
					  field->name);
		field = field->next;
		if (err)
			goto out;
	}

	if (pa->type)
		if (FUNC0(&buf, ":%s", pa->type) < 0)
			goto out;

	ret = FUNC2(&buf, NULL);
out:
	FUNC4(&buf);
	return ret;
}