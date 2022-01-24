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
struct probe_trace_arg_ref {int /*<<< orphan*/  offset; struct probe_trace_arg_ref* next; } ;
struct probe_trace_arg {char* value; scalar_t__ type; struct probe_trace_arg_ref* ref; scalar_t__ name; } ;

/* Variables and functions */
 int FUNC0 (struct probe_trace_arg_ref*,struct strbuf*,int) ; 
 int FUNC1 (struct strbuf*,char) ; 
 int FUNC2 (struct strbuf*,char*,char*,...) ; 
 int FUNC3 (struct strbuf*,char*) ; 

__attribute__((used)) static int FUNC4(struct probe_trace_arg *arg,
				      struct strbuf *buf)
{
	struct probe_trace_arg_ref *ref = arg->ref;
	int depth = 0, err;

	/* Argument name or separator */
	if (arg->name)
		err = FUNC2(buf, " %s=", arg->name);
	else
		err = FUNC1(buf, ' ');
	if (err)
		return err;

	/* Special case: @XXX */
	if (arg->value[0] == '@' && arg->ref)
			ref = ref->next;

	/* Dereferencing arguments */
	if (ref) {
		depth = FUNC0(ref, buf, 1);
		if (depth < 0)
			return depth;
	}

	/* Print argument value */
	if (arg->value[0] == '@' && arg->ref)
		err = FUNC2(buf, "%s%+ld", arg->value, arg->ref->offset);
	else
		err = FUNC3(buf, arg->value);

	/* Closing */
	while (!err && depth--)
		err = FUNC1(buf, ')');

	/* Print argument type */
	if (!err && arg->type)
		err = FUNC2(buf, ":%s", arg->type);

	return err;
}