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
typedef  scalar_t__ u64 ;
struct nft_limit {scalar_t__ tokens; scalar_t__ last; scalar_t__ tokens_max; int invert; int /*<<< orphan*/  lock; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC3(struct nft_limit *limit, u64 cost)
{
	u64 now, tokens;
	s64 delta;

	FUNC1(&limit->lock);
	now = FUNC0();
	tokens = limit->tokens + now - limit->last;
	if (tokens > limit->tokens_max)
		tokens = limit->tokens_max;

	limit->last = now;
	delta = tokens - cost;
	if (delta >= 0) {
		limit->tokens = delta;
		FUNC2(&limit->lock);
		return limit->invert;
	}
	limit->tokens = tokens;
	FUNC2(&limit->lock);
	return !limit->invert;
}