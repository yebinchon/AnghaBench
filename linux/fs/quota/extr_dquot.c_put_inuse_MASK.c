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
struct dquot {int /*<<< orphan*/  dq_inuse; } ;

/* Variables and functions */
 int /*<<< orphan*/  DQST_ALLOC_DQUOTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inuse_list ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct dquot *dquot)
{
	/* We add to the back of inuse list so we don't have to restart
	 * when traversing this list and we block */
	FUNC1(&dquot->dq_inuse, &inuse_list);
	FUNC0(DQST_ALLOC_DQUOTS);
}