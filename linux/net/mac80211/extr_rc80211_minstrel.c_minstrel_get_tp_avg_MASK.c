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
struct TYPE_2__ {int prob_ewma; } ;
struct minstrel_rate {int perfect_tx_time; TYPE_1__ stats; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int) ; 

int FUNC2(struct minstrel_rate *mr, int prob_ewma)
{
	int usecs;

	usecs = mr->perfect_tx_time;
	if (!usecs)
		usecs = 1000000;

	/* reset thr. below 10% success */
	if (mr->stats.prob_ewma < FUNC0(10, 100))
		return 0;

	if (prob_ewma > FUNC0(90, 100))
		return FUNC1(100000 * (FUNC0(90, 100) / usecs));
	else
		return FUNC1(100000 * (prob_ewma / usecs));
}