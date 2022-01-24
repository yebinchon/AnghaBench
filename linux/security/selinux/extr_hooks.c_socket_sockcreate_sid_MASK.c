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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct task_security_struct {scalar_t__ sockcreate_sid; int /*<<< orphan*/  sid; } ;

/* Variables and functions */
 scalar_t__ SECSID_NULL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  selinux_state ; 

__attribute__((used)) static int FUNC1(const struct task_security_struct *tsec,
				 u16 secclass, u32 *socksid)
{
	if (tsec->sockcreate_sid > SECSID_NULL) {
		*socksid = tsec->sockcreate_sid;
		return 0;
	}

	return FUNC0(&selinux_state, tsec->sid, tsec->sid,
				       secclass, NULL, socksid);
}