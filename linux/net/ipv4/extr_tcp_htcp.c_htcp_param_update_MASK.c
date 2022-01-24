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
typedef  scalar_t__ u32 ;
struct sock {int dummy; } ;
struct htcp {scalar_t__ minRTT; scalar_t__ maxRTT; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct htcp*) ; 
 int /*<<< orphan*/  FUNC1 (struct htcp*,scalar_t__,scalar_t__) ; 
 struct htcp* FUNC2 (struct sock*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk)
{
	struct htcp *ca = FUNC2(sk);
	u32 minRTT = ca->minRTT;
	u32 maxRTT = ca->maxRTT;

	FUNC1(ca, minRTT, maxRTT);
	FUNC0(ca);

	/* add slowly fading memory for maxRTT to accommodate routing changes */
	if (minRTT > 0 && maxRTT > minRTT)
		ca->maxRTT = minRTT + ((maxRTT - minRTT) * 95) / 100;
}