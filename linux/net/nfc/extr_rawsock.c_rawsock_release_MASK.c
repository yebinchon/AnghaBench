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
struct socket {scalar_t__ type; struct sock* sk; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 scalar_t__ SOCK_RAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct socket*,struct sock*) ; 
 int /*<<< orphan*/  raw_sk_list ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static int FUNC4(struct socket *sock)
{
	struct sock *sk = sock->sk;

	FUNC1("sock=%p sk=%p\n", sock, sk);

	if (!sk)
		return 0;

	if (sock->type == SOCK_RAW)
		FUNC0(&raw_sk_list, sk);

	FUNC2(sk);
	FUNC3(sk);

	return 0;
}