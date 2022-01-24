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
struct tun_security_struct {int /*<<< orphan*/  sid; } ;

/* Variables and functions */
 int /*<<< orphan*/  SECCLASS_TUN_SOCKET ; 
 int /*<<< orphan*/  TUN_SOCKET__ATTACH_QUEUE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  selinux_state ; 

__attribute__((used)) static int FUNC2(void *security)
{
	struct tun_security_struct *tunsec = security;

	return FUNC0(&selinux_state,
			    FUNC1(), tunsec->sid, SECCLASS_TUN_SOCKET,
			    TUN_SOCKET__ATTACH_QUEUE, NULL);
}