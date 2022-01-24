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
struct tun_security_struct {int /*<<< orphan*/  sid; } ;

/* Variables and functions */
 int /*<<< orphan*/  SECCLASS_TUN_SOCKET ; 
 int /*<<< orphan*/  TUN_SOCKET__RELABELFROM ; 
 int /*<<< orphan*/  TUN_SOCKET__RELABELTO ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  selinux_state ; 

__attribute__((used)) static int FUNC2(void *security)
{
	struct tun_security_struct *tunsec = security;
	u32 sid = FUNC1();
	int err;

	err = FUNC0(&selinux_state,
			   sid, tunsec->sid, SECCLASS_TUN_SOCKET,
			   TUN_SOCKET__RELABELFROM, NULL);
	if (err)
		return err;
	err = FUNC0(&selinux_state,
			   sid, sid, SECCLASS_TUN_SOCKET,
			   TUN_SOCKET__RELABELTO, NULL);
	if (err)
		return err;
	tunsec->sid = sid;

	return 0;
}