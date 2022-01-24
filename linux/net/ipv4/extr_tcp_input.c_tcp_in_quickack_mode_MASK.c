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
struct TYPE_2__ {scalar_t__ quick; } ;
struct inet_connection_sock {TYPE_1__ icsk_ack; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTAX_QUICKACK ; 
 struct dst_entry* FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (struct dst_entry const*,int /*<<< orphan*/ ) ; 
 struct inet_connection_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static bool FUNC4(struct sock *sk)
{
	const struct inet_connection_sock *icsk = FUNC2(sk);
	const struct dst_entry *dst = FUNC0(sk);

	return (dst && FUNC1(dst, RTAX_QUICKACK)) ||
		(icsk->icsk_ack.quick && !FUNC3(sk));
}