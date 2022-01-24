#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int gfp_t ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int ALLOC_NO_WATERMARKS ; 
 int ALLOC_OOM ; 
 int PF_MEMALLOC ; 
 int __GFP_MEMALLOC ; 
 int __GFP_NOMEMALLOC ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline int FUNC4(gfp_t gfp_mask)
{
	if (FUNC3(gfp_mask & __GFP_NOMEMALLOC))
		return 0;
	if (gfp_mask & __GFP_MEMALLOC)
		return ALLOC_NO_WATERMARKS;
	if (FUNC1() && (current->flags & PF_MEMALLOC))
		return ALLOC_NO_WATERMARKS;
	if (!FUNC0()) {
		if (current->flags & PF_MEMALLOC)
			return ALLOC_NO_WATERMARKS;
		else if (FUNC2(current))
			return ALLOC_OOM;
	}

	return 0;
}