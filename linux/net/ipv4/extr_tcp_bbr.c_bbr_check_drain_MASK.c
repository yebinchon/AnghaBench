#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct rate_sample {int dummy; } ;
struct bbr {scalar_t__ mode; } ;
struct TYPE_3__ {scalar_t__ snd_ssthresh; } ;

/* Variables and functions */
 scalar_t__ BBR_DRAIN ; 
 scalar_t__ BBR_STARTUP ; 
 int /*<<< orphan*/  BBR_UNIT ; 
 scalar_t__ FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 struct bbr* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (struct sock*) ; 

__attribute__((used)) static void FUNC8(struct sock *sk, const struct rate_sample *rs)
{
	struct bbr *bbr = FUNC5(sk);

	if (bbr->mode == BBR_STARTUP && FUNC0(sk)) {
		bbr->mode = BBR_DRAIN;	/* drain queue we created */
		FUNC7(sk)->snd_ssthresh =
				FUNC1(sk, FUNC2(sk), BBR_UNIT);
	}	/* fall through to check if in-flight is already small: */
	if (bbr->mode == BBR_DRAIN &&
	    FUNC3(sk, FUNC6(FUNC7(sk))) <=
	    FUNC1(sk, FUNC2(sk), BBR_UNIT))
		FUNC4(sk);  /* we estimate queue is drained */
}