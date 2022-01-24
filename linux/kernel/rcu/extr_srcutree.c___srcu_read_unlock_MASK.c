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
struct srcu_struct {TYPE_1__* sda; } ;
struct TYPE_2__ {int /*<<< orphan*/ * srcu_unlock_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct srcu_struct *ssp, int idx)
{
	FUNC0(); /* C */  /* Avoid leaking the critical section. */
	FUNC1(ssp->sda->srcu_unlock_count[idx]);
}