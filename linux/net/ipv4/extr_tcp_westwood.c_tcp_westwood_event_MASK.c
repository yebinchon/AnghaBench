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
struct westwood {int reset_rtt_min; } ;
struct tcp_sock {void* snd_ssthresh; void* snd_cwnd; } ;
struct sock {int dummy; } ;
typedef  enum tcp_ca_event { ____Placeholder_tcp_ca_event } tcp_ca_event ;

/* Variables and functions */
#define  CA_EVENT_COMPLETE_CWR 129 
#define  CA_EVENT_LOSS 128 
 struct westwood* FUNC0 (struct sock*) ; 
 struct tcp_sock* FUNC1 (struct sock*) ; 
 void* FUNC2 (struct sock*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk, enum tcp_ca_event event)
{
	struct tcp_sock *tp = FUNC1(sk);
	struct westwood *w = FUNC0(sk);

	switch (event) {
	case CA_EVENT_COMPLETE_CWR:
		tp->snd_cwnd = tp->snd_ssthresh = FUNC2(sk);
		break;
	case CA_EVENT_LOSS:
		tp->snd_ssthresh = FUNC2(sk);
		/* Update RTT_min when next ack arrives */
		w->reset_rtt_min = 1;
		break;
	default:
		/* don't care */
		break;
	}
}