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
struct xdp_sock {TYPE_1__* umem; TYPE_1__* rx; } ;
struct TYPE_2__ {struct TYPE_2__* fq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 

bool FUNC1(struct xdp_sock *xs)
{
	return FUNC0(xs->rx) &&  FUNC0(xs->umem) &&
		FUNC0(xs->umem->fq);
}