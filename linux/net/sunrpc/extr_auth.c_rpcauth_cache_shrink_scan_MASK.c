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
struct shrink_control {int gfp_mask; int /*<<< orphan*/  nr_to_scan; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 unsigned long SHRINK_STOP ; 
 int /*<<< orphan*/  cred_unused ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long
FUNC2(struct shrinker *shrink, struct shrink_control *sc)

{
	if ((sc->gfp_mask & GFP_KERNEL) != GFP_KERNEL)
		return SHRINK_STOP;

	/* nothing left, don't come back */
	if (FUNC0(&cred_unused))
		return SHRINK_STOP;

	return FUNC1(sc->nr_to_scan);
}