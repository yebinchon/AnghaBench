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
struct alloc_context {int /*<<< orphan*/  nodemask; int /*<<< orphan*/  zonelist; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long*) ; 
 int FUNC8 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(gfp_t gfp_mask, unsigned int order,
					const struct alloc_context *ac)
{
	int progress;
	unsigned int noreclaim_flag;
	unsigned long pflags;

	FUNC0();

	/* We now go into synchronous reclaim */
	FUNC1();
	FUNC6(&pflags);
	FUNC2(gfp_mask);
	noreclaim_flag = FUNC5();

	progress = FUNC8(ac->zonelist, order, gfp_mask,
								ac->nodemask);

	FUNC4(noreclaim_flag);
	FUNC3(gfp_mask);
	FUNC7(&pflags);

	FUNC0();

	return progress;
}