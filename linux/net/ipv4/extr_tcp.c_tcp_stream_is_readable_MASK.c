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
struct tcp_sock {int /*<<< orphan*/  copied_seq; int /*<<< orphan*/  rcv_nxt; } ;
struct sock {TYPE_1__* sk_prot; } ;
struct TYPE_2__ {int (* stream_memory_read ) (struct sock*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sock*) ; 

__attribute__((used)) static inline bool FUNC2(const struct tcp_sock *tp,
					  int target, struct sock *sk)
{
	return (FUNC0(tp->rcv_nxt) - FUNC0(tp->copied_seq) >= target) ||
		(sk->sk_prot->stream_memory_read ?
		sk->sk_prot->stream_memory_read(sk) : false);
}