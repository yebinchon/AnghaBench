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

/* Variables and functions */
 int FUNC0 (struct shrinker*) ; 
 int /*<<< orphan*/  FUNC1 (struct shrinker*) ; 

int FUNC2(struct shrinker *shrinker)
{
	int err = FUNC0(shrinker);

	if (err)
		return err;
	FUNC1(shrinker);
	return 0;
}