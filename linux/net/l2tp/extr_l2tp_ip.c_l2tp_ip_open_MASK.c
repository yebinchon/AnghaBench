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
struct sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  inet_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_L2TP ; 
 TYPE_1__* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  l2tp_ip_lock ; 
 int /*<<< orphan*/  l2tp_ip_table ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct sock *sk)
{
	/* Prevent autobind. We don't have ports. */
	FUNC0(sk)->inet_num = IPPROTO_L2TP;

	FUNC2(&l2tp_ip_lock);
	FUNC1(sk, &l2tp_ip_table);
	FUNC3(&l2tp_ip_lock);

	return 0;
}