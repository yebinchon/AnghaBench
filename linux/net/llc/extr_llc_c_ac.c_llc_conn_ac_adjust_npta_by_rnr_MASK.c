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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_sock {int dec_cntr; int inc_cntr; scalar_t__ npta; int /*<<< orphan*/  dec_step; scalar_t__ remote_busy_flag; } ;

/* Variables and functions */
 struct llc_sock* FUNC0 (struct sock*) ; 

int FUNC1(struct sock *sk, struct sk_buff *skb)
{
	struct llc_sock *llc = FUNC0(sk);

	if (llc->remote_busy_flag)
		if (!llc->dec_step) {
			if (!llc->dec_cntr) {
				llc->inc_cntr = llc->dec_cntr = 2;
				if (llc->npta > 0)
					--llc->npta;
			} else
				--llc->dec_cntr;
		}
	return 0;
}