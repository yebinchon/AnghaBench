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
struct shrinker {int dummy; } ;
struct shrink_control {int gfp_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long SHRINK_STOP ; 
 int __GFP_FS ; 
 int /*<<< orphan*/  dispose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gfs2_qd_isolate ; 
 int /*<<< orphan*/  gfs2_qd_lru ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *,struct shrink_control*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned long FUNC3(struct shrinker *shrink,
					 struct shrink_control *sc)
{
	FUNC0(dispose);
	unsigned long freed;

	if (!(sc->gfp_mask & __GFP_FS))
		return SHRINK_STOP;

	freed = FUNC2(&gfs2_qd_lru, sc,
				     gfs2_qd_isolate, &dispose);

	FUNC1(&dispose);

	return freed;
}