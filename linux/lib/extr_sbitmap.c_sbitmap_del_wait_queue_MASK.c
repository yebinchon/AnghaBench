#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  entry; } ;
struct sbq_wait {TYPE_2__* sbq; TYPE_1__ wait; } ;
struct TYPE_4__ {int /*<<< orphan*/  ws_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct sbq_wait *sbq_wait)
{
	FUNC1(&sbq_wait->wait.entry);
	if (sbq_wait->sbq) {
		FUNC0(&sbq_wait->sbq->ws_active);
		sbq_wait->sbq = NULL;
	}
}