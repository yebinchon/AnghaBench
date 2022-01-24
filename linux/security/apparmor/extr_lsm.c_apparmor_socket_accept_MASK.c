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
struct socket {TYPE_1__* sk; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AA_MAY_ACCEPT ; 
 int /*<<< orphan*/  OP_ACCEPT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,struct socket*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct socket *sock, struct socket *newsock)
{
	FUNC0(!sock);
	FUNC0(!sock->sk);
	FUNC0(!newsock);
	FUNC0(FUNC4());

	return FUNC3(sock->sk->sk_family,
			 FUNC2(sock, newsock),
			 FUNC1(OP_ACCEPT, AA_MAY_ACCEPT, sock->sk));
}