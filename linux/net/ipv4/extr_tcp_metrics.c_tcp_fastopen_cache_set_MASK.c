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
typedef  scalar_t__ u16 ;
struct tcp_fastopen_cookie {scalar_t__ len; int /*<<< orphan*/  exp; } ;
struct tcp_fastopen_metrics {scalar_t__ try_exp; scalar_t__ syn_loss; int /*<<< orphan*/  last_syn_loss; struct tcp_fastopen_cookie cookie; scalar_t__ mss; } ;
struct tcp_metrics_block {struct tcp_fastopen_metrics tcpm_fastopen; } ;
struct sock {int dummy; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 struct dst_entry* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  fastopen_seqlock ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct tcp_metrics_block* FUNC3 (struct sock*,struct dst_entry*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct sock *sk, u16 mss,
			    struct tcp_fastopen_cookie *cookie, bool syn_lost,
			    u16 try_exp)
{
	struct dst_entry *dst = FUNC0(sk);
	struct tcp_metrics_block *tm;

	if (!dst)
		return;
	FUNC1();
	tm = FUNC3(sk, dst, true);
	if (tm) {
		struct tcp_fastopen_metrics *tfom = &tm->tcpm_fastopen;

		FUNC4(&fastopen_seqlock);
		if (mss)
			tfom->mss = mss;
		if (cookie && cookie->len > 0)
			tfom->cookie = *cookie;
		else if (try_exp > tfom->try_exp &&
			 tfom->cookie.len <= 0 && !tfom->cookie.exp)
			tfom->try_exp = try_exp;
		if (syn_lost) {
			++tfom->syn_loss;
			tfom->last_syn_loss = jiffies;
		} else
			tfom->syn_loss = 0;
		FUNC5(&fastopen_seqlock);
	}
	FUNC2();
}