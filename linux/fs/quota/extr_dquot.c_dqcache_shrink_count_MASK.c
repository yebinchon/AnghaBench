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
struct shrinker {int dummy; } ;
struct shrink_control {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * counter; } ;

/* Variables and functions */
 size_t DQST_FREE_DQUOTS ; 
 TYPE_1__ dqstats ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long
FUNC2(struct shrinker *shrink, struct shrink_control *sc)
{
	return FUNC1(
	FUNC0(&dqstats.counter[DQST_FREE_DQUOTS]));
}