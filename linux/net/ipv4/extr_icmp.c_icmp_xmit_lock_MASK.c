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
struct TYPE_2__ {int /*<<< orphan*/  slock; } ;
struct sock {TYPE_1__ sk_lock; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct sock* FUNC0 (struct net*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline struct sock *FUNC3(struct net *net)
{
	struct sock *sk;

	sk = FUNC0(net);

	if (FUNC2(!FUNC1(&sk->sk_lock.slock))) {
		/* This can happen if the output path signals a
		 * dst_link_failure() for an outgoing ICMP packet.
		 */
		return NULL;
	}
	return sk;
}