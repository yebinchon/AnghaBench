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
typedef  scalar_t__ u64 ;
struct dl_rq {scalar_t__ this_bw; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct dl_rq*) ; 

__attribute__((used)) static inline
void FUNC3(u64 dl_bw, struct dl_rq *dl_rq)
{
	u64 old = dl_rq->this_bw;

	FUNC1(&(FUNC2(dl_rq))->lock);
	dl_rq->this_bw += dl_bw;
	FUNC0(dl_rq->this_bw < old); /* overflow */
}