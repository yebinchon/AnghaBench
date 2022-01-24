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
struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct atm_vcc {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 struct atm_vcc* FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC3 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 

__attribute__((used)) static int FUNC5(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct atm_vcc *vcc;

	if (sk) {
		vcc = FUNC0(sock);
		FUNC2("%p\n", vcc);
		FUNC1(ATM_VF_READY, &vcc->flags);
		/*
		 * VCC pointer is used as a reference,
		 * so we must not free it (thereby subjecting it to re-use)
		 * before all pending connections are closed
		 */
		FUNC3(vcc);
		FUNC4(sock);
	}
	return 0;
}