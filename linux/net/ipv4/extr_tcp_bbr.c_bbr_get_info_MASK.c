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
struct TYPE_2__ {int bbr_bw_lo; int bbr_bw_hi; int /*<<< orphan*/  bbr_cwnd_gain; int /*<<< orphan*/  bbr_pacing_gain; int /*<<< orphan*/  bbr_min_rtt; } ;
union tcp_cc_info {TYPE_1__ bbr; } ;
typedef  int u64 ;
typedef  int u32 ;
struct tcp_sock {int mss_cache; } ;
struct sock {int dummy; } ;
struct bbr {int /*<<< orphan*/  cwnd_gain; int /*<<< orphan*/  pacing_gain; int /*<<< orphan*/  min_rtt_us; } ;

/* Variables and functions */
 int BW_SCALE ; 
 int INET_DIAG_BBRINFO ; 
 int INET_DIAG_VEGASINFO ; 
 int USEC_PER_SEC ; 
 int FUNC0 (struct sock*) ; 
 struct bbr* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 struct tcp_sock* FUNC3 (struct sock*) ; 

__attribute__((used)) static size_t FUNC4(struct sock *sk, u32 ext, int *attr,
			   union tcp_cc_info *info)
{
	if (ext & (1 << (INET_DIAG_BBRINFO - 1)) ||
	    ext & (1 << (INET_DIAG_VEGASINFO - 1))) {
		struct tcp_sock *tp = FUNC3(sk);
		struct bbr *bbr = FUNC1(sk);
		u64 bw = FUNC0(sk);

		bw = bw * tp->mss_cache * USEC_PER_SEC >> BW_SCALE;
		FUNC2(&info->bbr, 0, sizeof(info->bbr));
		info->bbr.bbr_bw_lo		= (u32)bw;
		info->bbr.bbr_bw_hi		= (u32)(bw >> 32);
		info->bbr.bbr_min_rtt		= bbr->min_rtt_us;
		info->bbr.bbr_pacing_gain	= bbr->pacing_gain;
		info->bbr.bbr_cwnd_gain		= bbr->cwnd_gain;
		*attr = INET_DIAG_BBRINFO;
		return sizeof(info->bbr);
	}
	return 0;
}