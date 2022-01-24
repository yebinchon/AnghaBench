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
typedef  int /*<<< orphan*/  u32 ;
struct setuid_rule {void* dst_uid; void* src_uid; } ;
struct file {TYPE_1__* f_cred; } ;
struct TYPE_2__ {int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static int FUNC4(struct file *file, char *buf,
	struct setuid_rule *rule)
{
	char *child_str;
	int ret;
	u32 parsed_parent, parsed_child;

	/* Format of |buf| string should be <UID>:<UID>. */
	child_str = FUNC2(buf, ':');
	if (child_str == NULL)
		return -EINVAL;
	*child_str = '\0';
	child_str++;

	ret = FUNC0(buf, 0, &parsed_parent);
	if (ret)
		return ret;

	ret = FUNC0(child_str, 0, &parsed_child);
	if (ret)
		return ret;

	rule->src_uid = FUNC1(file->f_cred->user_ns, parsed_parent);
	rule->dst_uid = FUNC1(file->f_cred->user_ns, parsed_child);
	if (!FUNC3(rule->src_uid) || !FUNC3(rule->dst_uid))
		return -EINVAL;

	return 0;
}