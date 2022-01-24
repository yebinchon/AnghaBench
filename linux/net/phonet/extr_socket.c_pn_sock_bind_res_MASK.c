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
typedef  size_t u8 ;
struct sock {int /*<<< orphan*/  sk_socket; } ;
struct TYPE_2__ {int /*<<< orphan*/ ** sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EADDRINUSE ; 
 int EAGAIN ; 
 int ENOIOCTLCMD ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ pnres ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  resource_mutex ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

int FUNC8(struct sock *sk, u8 res)
{
	int ret = -EADDRINUSE;

	if (!FUNC3(FUNC7(sk), &init_net))
		return -ENOIOCTLCMD;
	if (!FUNC0(CAP_SYS_ADMIN))
		return -EPERM;
	if (FUNC4(sk->sk_socket))
		return -EAGAIN;

	FUNC1(&resource_mutex);
	if (pnres.sk[res] == NULL) {
		FUNC6(sk);
		FUNC5(pnres.sk[res], sk);
		ret = 0;
	}
	FUNC2(&resource_mutex);
	return ret;
}