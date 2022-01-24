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
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct rate_sample {int /*<<< orphan*/  acked_sacked; } ;
struct bbr {int /*<<< orphan*/  cwnd_gain; int /*<<< orphan*/  pacing_gain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct rate_sample const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct rate_sample const*) ; 
 struct bbr* FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk, const struct rate_sample *rs)
{
	struct bbr *bbr = FUNC4(sk);
	u32 bw;

	FUNC3(sk, rs);

	bw = FUNC0(sk);
	FUNC2(sk, bw, bbr->pacing_gain);
	FUNC1(sk, rs, rs->acked_sacked, bw, bbr->cwnd_gain);
}