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
struct TYPE_2__ {int rcv_wscale; scalar_t__ wscale_ok; } ;
struct tcp_sock {int snd_nxt; TYPE_1__ rx_opt; } ;
struct sock {int dummy; } ;
typedef  int __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 struct tcp_sock* FUNC1 (struct sock const*) ; 
 int FUNC2 (struct tcp_sock const*) ; 

__attribute__((used)) static inline __u32 FUNC3(const struct sock *sk)
{
	const struct tcp_sock *tp = FUNC1(sk);

	if (!FUNC0(FUNC2(tp), tp->snd_nxt) ||
	    (tp->rx_opt.wscale_ok &&
	     ((tp->snd_nxt - FUNC2(tp)) < (1 << tp->rx_opt.rcv_wscale))))
		return tp->snd_nxt;
	else
		return FUNC2(tp);
}