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
struct rate_sample {int dummy; } ;
struct bbr {scalar_t__ mode; } ;

/* Variables and functions */
 scalar_t__ BBR_PROBE_BW ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (struct sock*,struct rate_sample const*) ; 
 struct bbr* FUNC2 (struct sock*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk,
				   const struct rate_sample *rs)
{
	struct bbr *bbr = FUNC2(sk);

	if (bbr->mode == BBR_PROBE_BW && FUNC1(sk, rs))
		FUNC0(sk);
}