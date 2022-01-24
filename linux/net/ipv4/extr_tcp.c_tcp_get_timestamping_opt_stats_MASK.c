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
typedef  unsigned long u64 ;
struct tcp_sock {unsigned long data_segs_out; unsigned long total_retrans; int snd_cwnd; int reordering; int snd_ssthresh; int delivered; int delivered_ce; int write_seq; int snd_una; unsigned long bytes_sent; unsigned long bytes_retrans; int dsack_dups; int reord_seen; int srtt_us; int /*<<< orphan*/  rate_app_limited; } ;
struct tcp_info {unsigned long tcpi_busy_time; unsigned long tcpi_rwnd_limited; unsigned long tcpi_sndbuf_limited; } ;
struct sock {int /*<<< orphan*/  sk_pacing_rate; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int icsk_retransmits; int icsk_ca_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCP_NLA_BUSY ; 
 int /*<<< orphan*/  TCP_NLA_BYTES_RETRANS ; 
 int /*<<< orphan*/  TCP_NLA_BYTES_SENT ; 
 int /*<<< orphan*/  TCP_NLA_CA_STATE ; 
 int /*<<< orphan*/  TCP_NLA_DATA_SEGS_OUT ; 
 int /*<<< orphan*/  TCP_NLA_DELIVERED ; 
 int /*<<< orphan*/  TCP_NLA_DELIVERED_CE ; 
 int /*<<< orphan*/  TCP_NLA_DELIVERY_RATE ; 
 int /*<<< orphan*/  TCP_NLA_DELIVERY_RATE_APP_LMT ; 
 int /*<<< orphan*/  TCP_NLA_DSACK_DUPS ; 
 int /*<<< orphan*/  TCP_NLA_MIN_RTT ; 
 int /*<<< orphan*/  TCP_NLA_PACING_RATE ; 
 int /*<<< orphan*/  TCP_NLA_PAD ; 
 int /*<<< orphan*/  TCP_NLA_RECUR_RETRANS ; 
 int /*<<< orphan*/  TCP_NLA_REORDERING ; 
 int /*<<< orphan*/  TCP_NLA_REORD_SEEN ; 
 int /*<<< orphan*/  TCP_NLA_RWND_LIMITED ; 
 int /*<<< orphan*/  TCP_NLA_SNDBUF_LIMITED ; 
 int /*<<< orphan*/  TCP_NLA_SNDQ_SIZE ; 
 int /*<<< orphan*/  TCP_NLA_SND_CWND ; 
 int /*<<< orphan*/  TCP_NLA_SND_SSTHRESH ; 
 int /*<<< orphan*/  TCP_NLA_SRTT ; 
 int /*<<< orphan*/  TCP_NLA_TOTAL_RETRANS ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC6 (struct tcp_sock const*) ; 
 int /*<<< orphan*/  FUNC7 (struct tcp_sock const*,struct tcp_info*) ; 
 int FUNC8 (struct tcp_sock const*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct tcp_sock* FUNC10 (struct sock const*) ; 

struct sk_buff *FUNC11(const struct sock *sk)
{
	const struct tcp_sock *tp = FUNC10(sk);
	struct sk_buff *stats;
	struct tcp_info info;
	unsigned long rate;
	u64 rate64;

	stats = FUNC1(FUNC9(), GFP_ATOMIC);
	if (!stats)
		return NULL;

	FUNC7(tp, &info);
	FUNC4(stats, TCP_NLA_BUSY,
			  info.tcpi_busy_time, TCP_NLA_PAD);
	FUNC4(stats, TCP_NLA_RWND_LIMITED,
			  info.tcpi_rwnd_limited, TCP_NLA_PAD);
	FUNC4(stats, TCP_NLA_SNDBUF_LIMITED,
			  info.tcpi_sndbuf_limited, TCP_NLA_PAD);
	FUNC4(stats, TCP_NLA_DATA_SEGS_OUT,
			  tp->data_segs_out, TCP_NLA_PAD);
	FUNC4(stats, TCP_NLA_TOTAL_RETRANS,
			  tp->total_retrans, TCP_NLA_PAD);

	rate = FUNC0(sk->sk_pacing_rate);
	rate64 = (rate != ~0UL) ? rate : ~0ULL;
	FUNC4(stats, TCP_NLA_PACING_RATE, rate64, TCP_NLA_PAD);

	rate64 = FUNC6(tp);
	FUNC4(stats, TCP_NLA_DELIVERY_RATE, rate64, TCP_NLA_PAD);

	FUNC3(stats, TCP_NLA_SND_CWND, tp->snd_cwnd);
	FUNC3(stats, TCP_NLA_REORDERING, tp->reordering);
	FUNC3(stats, TCP_NLA_MIN_RTT, FUNC8(tp));

	FUNC5(stats, TCP_NLA_RECUR_RETRANS, FUNC2(sk)->icsk_retransmits);
	FUNC5(stats, TCP_NLA_DELIVERY_RATE_APP_LMT, !!tp->rate_app_limited);
	FUNC3(stats, TCP_NLA_SND_SSTHRESH, tp->snd_ssthresh);
	FUNC3(stats, TCP_NLA_DELIVERED, tp->delivered);
	FUNC3(stats, TCP_NLA_DELIVERED_CE, tp->delivered_ce);

	FUNC3(stats, TCP_NLA_SNDQ_SIZE, tp->write_seq - tp->snd_una);
	FUNC5(stats, TCP_NLA_CA_STATE, FUNC2(sk)->icsk_ca_state);

	FUNC4(stats, TCP_NLA_BYTES_SENT, tp->bytes_sent,
			  TCP_NLA_PAD);
	FUNC4(stats, TCP_NLA_BYTES_RETRANS, tp->bytes_retrans,
			  TCP_NLA_PAD);
	FUNC3(stats, TCP_NLA_DSACK_DUPS, tp->dsack_dups);
	FUNC3(stats, TCP_NLA_REORD_SEEN, tp->reord_seen);
	FUNC3(stats, TCP_NLA_SRTT, tp->srtt_us >> 3);

	return stats;
}