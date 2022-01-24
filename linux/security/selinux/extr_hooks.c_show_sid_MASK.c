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
typedef  int /*<<< orphan*/  u32 ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  selinux_state ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char) ; 
 scalar_t__ FUNC4 (char*,char) ; 

__attribute__((used)) static int FUNC5(struct seq_file *m, u32 sid)
{
	char *context = NULL;
	u32 len;
	int rc;

	rc = FUNC1(&selinux_state, sid,
					     &context, &len);
	if (!rc) {
		bool has_comma = context && FUNC4(context, ',');

		FUNC3(m, '=');
		if (has_comma)
			FUNC3(m, '\"');
		FUNC2(m, context, "\"\n\\");
		if (has_comma)
			FUNC3(m, '\"');
	}
	FUNC0(context);
	return rc;
}