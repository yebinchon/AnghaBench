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
struct task_security_struct {int /*<<< orphan*/  sid; } ;

/* Variables and functions */
 int /*<<< orphan*/  PACKET__RELABELTO ; 
 int /*<<< orphan*/  SECCLASS_PACKET ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct task_security_struct* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  selinux_state ; 

__attribute__((used)) static int FUNC3(u32 sid)
{
	const struct task_security_struct *__tsec;
	u32 tsid;

	__tsec = FUNC2(FUNC1());
	tsid = __tsec->sid;

	return FUNC0(&selinux_state,
			    tsid, sid, SECCLASS_PACKET, PACKET__RELABELTO,
			    NULL);
}