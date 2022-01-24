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
typedef  scalar_t__ u32 ;
struct tcp_sock {int copied_seq; int rcv_nxt; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  SOCK_DONE ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct sock *sk)
{
	const struct tcp_sock *tp = FUNC4(sk);
	u32 copied_seq = FUNC0(tp->copied_seq);
	u32 rcv_nxt = FUNC0(tp->rcv_nxt);
	int inq;

	inq = rcv_nxt - copied_seq;
	if (FUNC5(inq < 0 || copied_seq != FUNC0(tp->copied_seq))) {
		FUNC1(sk);
		inq = tp->rcv_nxt - tp->copied_seq;
		FUNC2(sk);
	}
	/* After receiving a FIN, tell the user-space to continue reading
	 * by returning a non-zero inq.
	 */
	if (inq == 0 && FUNC3(sk, SOCK_DONE))
		inq = 1;
	return inq;
}