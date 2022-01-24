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
struct tcp_sock {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct inet_connection_sock {scalar_t__ icsk_backoff; } ;
struct TYPE_2__ {int /*<<< orphan*/  end_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICSK_TIME_PROBE0 ; 
 int /*<<< orphan*/  TCP_RTO_MAX ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inet_connection_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC6 (struct sock*) ; 
 struct tcp_sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct tcp_sock const*) ; 

__attribute__((used)) static void FUNC9(struct sock *sk)
{
	struct inet_connection_sock *icsk = FUNC2(sk);
	struct sk_buff *head = FUNC6(sk);
	const struct tcp_sock *tp = FUNC7(sk);

	/* Was it a usable window open? */
	if (!head)
		return;
	if (!FUNC1(FUNC0(head)->end_seq, FUNC8(tp))) {
		icsk->icsk_backoff = 0;
		FUNC3(sk, ICSK_TIME_PROBE0);
		/* Socket must be waked up by subsequent tcp_data_snd_check().
		 * This function is not for random using!
		 */
	} else {
		unsigned long when = FUNC4(sk, TCP_RTO_MAX);

		FUNC5(sk, ICSK_TIME_PROBE0,
				     when, TCP_RTO_MAX, NULL);
	}
}