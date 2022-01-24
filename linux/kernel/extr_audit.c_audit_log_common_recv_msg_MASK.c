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
typedef  int /*<<< orphan*/  uid_t ;
typedef  scalar_t__ u16 ;
struct audit_context {int dummy; } ;
struct audit_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 scalar_t__ AUDIT_USER_AVC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  audit_enabled ; 
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*) ; 
 struct audit_buffer* FUNC2 (struct audit_context*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct audit_context *context,
					struct audit_buffer **ab, u16 msg_type)
{
	uid_t uid = FUNC5(&init_user_ns, FUNC4());
	pid_t pid = FUNC6(current);

	if (!audit_enabled && msg_type != AUDIT_USER_AVC) {
		*ab = NULL;
		return;
	}

	*ab = FUNC2(context, GFP_KERNEL, msg_type);
	if (FUNC7(!*ab))
		return;
	FUNC0(*ab, "pid=%d uid=%u ", pid, uid);
	FUNC1(*ab);
	FUNC3(*ab);
}