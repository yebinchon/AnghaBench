#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int sk_state; } ;
struct dst_entry {int dummy; } ;
struct TYPE_4__ {scalar_t__ icsk_pmtu_cookie; } ;
struct TYPE_3__ {int /*<<< orphan*/  mtu_info; } ;

/* Variables and functions */
 int TCPF_CLOSE ; 
 int TCPF_LISTEN ; 
 scalar_t__ FUNC0 (struct dst_entry*) ; 
 struct dst_entry* FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct sock *sk)
{
	struct dst_entry *dst;

	if ((1 << sk->sk_state) & (TCPF_LISTEN | TCPF_CLOSE))
		return;

	dst = FUNC1(sk, FUNC4(sk)->mtu_info);
	if (!dst)
		return;

	if (FUNC2(sk)->icsk_pmtu_cookie > FUNC0(dst)) {
		FUNC5(sk, FUNC0(dst));
		FUNC3(sk);
	}
}