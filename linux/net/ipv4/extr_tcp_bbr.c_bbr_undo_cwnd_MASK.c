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
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct bbr {scalar_t__ full_bw_cnt; scalar_t__ full_bw; } ;
struct TYPE_2__ {int /*<<< orphan*/  snd_cwnd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 struct bbr* FUNC1 (struct sock*) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 

__attribute__((used)) static u32 FUNC3(struct sock *sk)
{
	struct bbr *bbr = FUNC1(sk);

	bbr->full_bw = 0;   /* spurious slow-down; reset full pipe detection */
	bbr->full_bw_cnt = 0;
	FUNC0(sk);
	return FUNC2(sk)->snd_cwnd;
}