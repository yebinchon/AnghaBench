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
struct tcp_sock {int /*<<< orphan*/  snd_ssthresh; scalar_t__ prr_out; scalar_t__ prr_delivered; int /*<<< orphan*/  snd_cwnd; int /*<<< orphan*/  prior_cwnd; scalar_t__ snd_cwnd_cnt; scalar_t__ tlp_high_seq; int /*<<< orphan*/  snd_nxt; int /*<<< orphan*/  high_seq; } ;
struct sock {int dummy; } ;
struct TYPE_4__ {TYPE_1__* icsk_ca_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* ssthresh ) (struct sock*) ;} ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_sock*) ; 
 struct tcp_sock* FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(struct sock *sk)
{
	struct tcp_sock *tp = FUNC3(sk);

	tp->high_seq = tp->snd_nxt;
	tp->tlp_high_seq = 0;
	tp->snd_cwnd_cnt = 0;
	tp->prior_cwnd = tp->snd_cwnd;
	tp->prr_delivered = 0;
	tp->prr_out = 0;
	tp->snd_ssthresh = FUNC0(sk)->icsk_ca_ops->ssthresh(sk);
	FUNC2(tp);
}