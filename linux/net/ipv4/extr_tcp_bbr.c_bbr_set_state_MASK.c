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
typedef  scalar_t__ u8 ;
struct sock {int dummy; } ;
struct rate_sample {int losses; } ;
struct bbr {int round_start; scalar_t__ full_bw; scalar_t__ prev_ca_state; } ;

/* Variables and functions */
 scalar_t__ TCP_CA_Loss ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,struct rate_sample*) ; 
 struct bbr* FUNC1 (struct sock*) ; 

__attribute__((used)) static void FUNC2(struct sock *sk, u8 new_state)
{
	struct bbr *bbr = FUNC1(sk);

	if (new_state == TCP_CA_Loss) {
		struct rate_sample rs = { .losses = 1 };

		bbr->prev_ca_state = TCP_CA_Loss;
		bbr->full_bw = 0;
		bbr->round_start = 1;	/* treat RTO like end of a round */
		FUNC0(sk, &rs);
	}
}