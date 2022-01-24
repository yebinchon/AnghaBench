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
struct vsock_sock {int /*<<< orphan*/  trans; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct sock* FUNC3 (struct vsock_sock*) ; 

__attribute__((used)) static int FUNC4(struct vsock_sock *vsk, int mode)
{
	struct sock *sk = FUNC3(vsk);

	if (!(mode & SEND_SHUTDOWN))
		return 0;

	FUNC1(sk);
	FUNC0(vsk->trans, mode);
	FUNC2(sk);
	return 0;
}