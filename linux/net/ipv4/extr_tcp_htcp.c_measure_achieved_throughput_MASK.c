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
typedef  int u32 ;
struct tcp_sock {int snd_cwnd; } ;
struct sock {int dummy; } ;
struct inet_connection_sock {int icsk_ca_state; } ;
struct htcp {int packetcount; int lasttime; int alpha; int minRTT; int minB; int maxB; int Bi; scalar_t__ pkts_acked; } ;
struct ack_sample {scalar_t__ rtt_us; scalar_t__ pkts_acked; } ;
typedef  int __u32 ;

/* Variables and functions */
 int HZ ; 
 int TCPF_CA_Disorder ; 
 int TCPF_CA_Open ; 
 int TCP_CA_Open ; 
 int FUNC0 (struct htcp*) ; 
 struct inet_connection_sock* FUNC1 (struct sock*) ; 
 struct htcp* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int tcp_jiffies32 ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  use_bandwidth_switch ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct sock *sk,
					const struct ack_sample *sample)
{
	const struct inet_connection_sock *icsk = FUNC1(sk);
	const struct tcp_sock *tp = FUNC4(sk);
	struct htcp *ca = FUNC2(sk);
	u32 now = tcp_jiffies32;

	if (icsk->icsk_ca_state == TCP_CA_Open)
		ca->pkts_acked = sample->pkts_acked;

	if (sample->rtt_us > 0)
		FUNC3(sk, FUNC5(sample->rtt_us));

	if (!use_bandwidth_switch)
		return;

	/* achieved throughput calculations */
	if (!((1 << icsk->icsk_ca_state) & (TCPF_CA_Open | TCPF_CA_Disorder))) {
		ca->packetcount = 0;
		ca->lasttime = now;
		return;
	}

	ca->packetcount += sample->pkts_acked;

	if (ca->packetcount >= tp->snd_cwnd - (ca->alpha >> 7 ? : 1) &&
	    now - ca->lasttime >= ca->minRTT &&
	    ca->minRTT > 0) {
		__u32 cur_Bi = ca->packetcount * HZ / (now - ca->lasttime);

		if (FUNC0(ca) <= 3) {
			/* just after backoff */
			ca->minB = ca->maxB = ca->Bi = cur_Bi;
		} else {
			ca->Bi = (3 * ca->Bi + cur_Bi) / 4;
			if (ca->Bi > ca->maxB)
				ca->maxB = ca->Bi;
			if (ca->minB > ca->maxB)
				ca->minB = ca->maxB;
		}
		ca->packetcount = 0;
		ca->lasttime = now;
	}
}