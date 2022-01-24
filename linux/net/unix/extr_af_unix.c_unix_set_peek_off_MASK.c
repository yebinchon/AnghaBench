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
struct unix_sock {int /*<<< orphan*/  iolock; } ;
struct sock {int sk_peek_off; } ;

/* Variables and functions */
 int EINTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct unix_sock* FUNC2 (struct sock*) ; 

__attribute__((used)) static int FUNC3(struct sock *sk, int val)
{
	struct unix_sock *u = FUNC2(sk);

	if (FUNC0(&u->iolock))
		return -EINTR;

	sk->sk_peek_off = val;
	FUNC1(&u->iolock);

	return 0;
}