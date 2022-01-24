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
struct tcp_sock {scalar_t__ snd_cwnd; } ;
struct sock {int dummy; } ;
struct illinois {scalar_t__ cnt_rtt; int /*<<< orphan*/  beta; int /*<<< orphan*/  alpha; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALPHA_BASE ; 
 int /*<<< orphan*/  BETA_BASE ; 
 int /*<<< orphan*/  FUNC0 (struct illinois*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct illinois*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct illinois* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct illinois*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 struct tcp_sock* FUNC6 (struct sock*) ; 
 scalar_t__ win_thresh ; 

__attribute__((used)) static void FUNC7(struct sock *sk)
{
	struct tcp_sock *tp = FUNC6(sk);
	struct illinois *ca = FUNC3(sk);

	if (tp->snd_cwnd < win_thresh) {
		ca->alpha = ALPHA_BASE;
		ca->beta = BETA_BASE;
	} else if (ca->cnt_rtt > 0) {
		u32 dm = FUNC4(ca);
		u32 da = FUNC1(ca);

		ca->alpha = FUNC0(ca, da, dm);
		ca->beta = FUNC2(da, dm);
	}

	FUNC5(sk);
}