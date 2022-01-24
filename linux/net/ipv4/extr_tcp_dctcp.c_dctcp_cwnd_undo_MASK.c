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
struct dctcp {int /*<<< orphan*/  loss_cwnd; } ;
struct TYPE_2__ {int /*<<< orphan*/  snd_cwnd; } ;

/* Variables and functions */
 struct dctcp* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 

__attribute__((used)) static u32 FUNC3(struct sock *sk)
{
	const struct dctcp *ca = FUNC0(sk);

	return FUNC1(FUNC2(sk)->snd_cwnd, ca->loss_cwnd);
}