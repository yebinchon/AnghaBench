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
struct bbr {int cycle_idx; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBR_PROBE_BW ; 
 int CYCLE_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  bbr_cycle_rand ; 
 struct bbr* FUNC1 (struct sock*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct sock *sk)
{
	struct bbr *bbr = FUNC1(sk);

	bbr->mode = BBR_PROBE_BW;
	bbr->cycle_idx = CYCLE_LEN - 1 - FUNC2(bbr_cycle_rand);
	FUNC0(sk);	/* flip to next phase of gain cycle */
}