#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct TYPE_2__ {char const* name; } ;
struct hist_field {int flags; TYPE_1__ var; } ;

/* Variables and functions */
 int HIST_FIELD_FL_ALIAS ; 
 int HIST_FIELD_FL_CPU ; 
 int HIST_FIELD_FL_EXPR ; 
 int HIST_FIELD_FL_TIMESTAMP ; 
 int HIST_FIELD_FL_VAR_REF ; 
 char* FUNC0 (struct hist_field*) ; 
 char* FUNC1 (struct hist_field*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC5(struct seq_file *m, struct hist_field *hist_field)
{
	const char *field_name = FUNC1(hist_field, 0);

	if (hist_field->var.name)
		FUNC2(m, "%s=", hist_field->var.name);

	if (hist_field->flags & HIST_FIELD_FL_CPU)
		FUNC4(m, "cpu");
	else if (field_name) {
		if (hist_field->flags & HIST_FIELD_FL_VAR_REF ||
		    hist_field->flags & HIST_FIELD_FL_ALIAS)
			FUNC3(m, '$');
		FUNC2(m, "%s", field_name);
	} else if (hist_field->flags & HIST_FIELD_FL_TIMESTAMP)
		FUNC4(m, "common_timestamp");

	if (hist_field->flags) {
		if (!(hist_field->flags & HIST_FIELD_FL_VAR_REF) &&
		    !(hist_field->flags & HIST_FIELD_FL_EXPR)) {
			const char *flags = FUNC0(hist_field);

			if (flags)
				FUNC2(m, ".%s", flags);
		}
	}
}