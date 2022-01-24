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
struct dsa_tag_driver {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  dsa_tag_drivers_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct dsa_tag_driver *dsa_tag_driver)
{
	FUNC1(&dsa_tag_drivers_lock);
	FUNC0(&dsa_tag_driver->list);
	FUNC2(&dsa_tag_drivers_lock);
}