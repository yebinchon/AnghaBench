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
struct shrink_control {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_access_nr_entries ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 

unsigned long
FUNC2(struct shrinker *shrink, struct shrink_control *sc)
{
	return FUNC1(FUNC0(&nfs_access_nr_entries));
}