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
typedef  int /*<<< orphan*/  u16 ;
struct task_security_struct {int /*<<< orphan*/  sid; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCKET__CREATE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct task_security_struct* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  selinux_state ; 
 int FUNC3 (struct task_security_struct const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 

__attribute__((used)) static int FUNC5(int family, int type,
				 int protocol, int kern)
{
	const struct task_security_struct *tsec = FUNC2(FUNC1());
	u32 newsid;
	u16 secclass;
	int rc;

	if (kern)
		return 0;

	secclass = FUNC4(family, type, protocol);
	rc = FUNC3(tsec, secclass, &newsid);
	if (rc)
		return rc;

	return FUNC0(&selinux_state,
			    tsec->sid, newsid, secclass, SOCKET__CREATE, NULL);
}