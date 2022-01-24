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
struct sock {scalar_t__ sk_state; scalar_t__ sk_mark; int /*<<< orphan*/  sk_userlocks; int /*<<< orphan*/  sk_bound_dev_if; int /*<<< orphan*/  sk_family; } ;
struct nlattr {int dummy; } ;
struct inet_sock {int /*<<< orphan*/  inet_dport; int /*<<< orphan*/  inet_num; } ;
struct inet_diag_entry {scalar_t__ mark; int /*<<< orphan*/  userlocks; int /*<<< orphan*/  ifindex; int /*<<< orphan*/  dport; int /*<<< orphan*/  sport; int /*<<< orphan*/  family; } ;
struct TYPE_2__ {scalar_t__ ir_mark; } ;

/* Variables and functions */
 scalar_t__ TCP_NEW_SYN_RECV ; 
 int /*<<< orphan*/  FUNC0 (struct inet_diag_entry*,struct sock*) ; 
 int FUNC1 (struct nlattr const*,struct inet_diag_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 struct inet_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sock*) ; 

int FUNC7(const struct nlattr *bc, struct sock *sk)
{
	struct inet_sock *inet = FUNC4(sk);
	struct inet_diag_entry entry;

	if (!bc)
		return 1;

	entry.family = sk->sk_family;
	FUNC0(&entry, sk);
	entry.sport = inet->inet_num;
	entry.dport = FUNC5(inet->inet_dport);
	entry.ifindex = sk->sk_bound_dev_if;
	entry.userlocks = FUNC6(sk) ? sk->sk_userlocks : 0;
	if (FUNC6(sk))
		entry.mark = sk->sk_mark;
	else if (sk->sk_state == TCP_NEW_SYN_RECV)
		entry.mark = FUNC3(FUNC2(sk))->ir_mark;
	else
		entry.mark = 0;

	return FUNC1(bc, &entry);
}