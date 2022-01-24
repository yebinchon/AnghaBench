#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct src_mgr {int /*<<< orphan*/  mgr_lock; int /*<<< orphan*/  mgr; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct src {scalar_t__ mode; int multi; TYPE_2__ rsc; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* index ) (TYPE_2__*) ;int /*<<< orphan*/  (* master ) (TYPE_2__*) ;} ;

/* Variables and functions */
 scalar_t__ MEMRD ; 
 int /*<<< orphan*/  FUNC0 (struct src*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct src*,struct src_mgr*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC8(struct src_mgr *mgr, struct src *src)
{
	unsigned long flags;

	FUNC2(&mgr->mgr_lock, flags);
	src->rsc.ops->master(&src->rsc);
	if (MEMRD == src->mode)
		FUNC1(&mgr->mgr, src->multi,
				 src->rsc.ops->index(&src->rsc));
	else
		FUNC1(&mgr->mgr, 1, src->rsc.ops->index(&src->rsc));

	FUNC3(&mgr->mgr_lock, flags);
	FUNC4(src, mgr);
	FUNC0(src);

	return 0;
}