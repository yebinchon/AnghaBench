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
struct perf_probe_arg_field {struct perf_probe_arg_field* next; int /*<<< orphan*/  ref; int /*<<< orphan*/  index; void* name; } ;
struct perf_probe_arg {struct perf_probe_arg_field* field; void* type; void* var; void* name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  out_err ; 
 void* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 struct perf_probe_arg_field* FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct perf_probe_arg *dst,
				struct perf_probe_arg *src)
{
	struct perf_probe_arg_field *field, **ppfield;

	dst->name = FUNC0(src->name, out_err);
	dst->var = FUNC0(src->var, out_err);
	dst->type = FUNC0(src->type, out_err);

	field = src->field;
	ppfield = &(dst->field);
	while (field) {
		*ppfield = FUNC1(sizeof(*field));
		if (!*ppfield)
			goto out_err;
		(*ppfield)->name = FUNC0(field->name, out_err);
		(*ppfield)->index = field->index;
		(*ppfield)->ref = field->ref;
		field = field->next;
		ppfield = &((*ppfield)->next);
	}
	return 0;
out_err:
	return -ENOMEM;
}