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
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct audit_buffer *ab)
{
	char *ctx = NULL;
	unsigned len;
	int error;
	u32 sid;

	FUNC4(current, &sid);
	if (!sid)
		return 0;

	error = FUNC3(sid, &ctx, &len);
	if (error) {
		if (error != -EINVAL)
			goto error_path;
		return 0;
	}

	FUNC0(ab, " subj=%s", ctx);
	FUNC2(ctx, len);
	return 0;

error_path:
	FUNC1("error in audit_log_task_context");
	return error;
}