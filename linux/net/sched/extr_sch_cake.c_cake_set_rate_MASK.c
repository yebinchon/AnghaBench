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
typedef  long long u8 ;
typedef  long long u64 ;
typedef  long long u32 ;
struct TYPE_2__ {long long target; long long mtu_time; int p_inc; int p_dec; void* interval; } ;
struct cake_tin_data {int flow_quantum; long long tin_rate_bps; long long tin_rate_ns; long long tin_rate_shft; TYPE_1__ cparams; } ;

/* Variables and functions */
 scalar_t__ NSEC_PER_SEC ; 
 long long FUNC0 (long long,void*) ; 
 void* FUNC1 (long long const,int) ; 
 long long FUNC2 (long long,unsigned long long) ; 

__attribute__((used)) static void FUNC3(struct cake_tin_data *b, u64 rate, u32 mtu,
			  u64 target_ns, u64 rtt_est_ns)
{
	/* convert byte-rate into time-per-byte
	 * so it will always unwedge in reasonable time.
	 */
	static const u64 MIN_RATE = 64;
	u32 byte_target = mtu;
	u64 byte_target_ns;
	u8  rate_shft = 0;
	u64 rate_ns = 0;

	b->flow_quantum = 1514;
	if (rate) {
		b->flow_quantum = FUNC1(FUNC2(rate >> 12, 1514ULL), 300ULL);
		rate_shft = 34;
		rate_ns = ((u64)NSEC_PER_SEC) << rate_shft;
		rate_ns = FUNC0(rate_ns, FUNC1(MIN_RATE, rate));
		while (!!(rate_ns >> 34)) {
			rate_ns >>= 1;
			rate_shft--;
		}
	} /* else unlimited, ie. zero delay */

	b->tin_rate_bps  = rate;
	b->tin_rate_ns   = rate_ns;
	b->tin_rate_shft = rate_shft;

	byte_target_ns = (byte_target * rate_ns) >> rate_shft;

	b->cparams.target = FUNC1((byte_target_ns * 3) / 2, target_ns);
	b->cparams.interval = FUNC1(rtt_est_ns +
				     b->cparams.target - target_ns,
				     b->cparams.target * 2);
	b->cparams.mtu_time = byte_target_ns;
	b->cparams.p_inc = 1 << 24; /* 1/256 */
	b->cparams.p_dec = 1 << 20; /* 1/4096 */
}