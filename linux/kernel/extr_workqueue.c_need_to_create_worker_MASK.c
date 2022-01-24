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
struct worker_pool {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct worker_pool*) ; 
 scalar_t__ FUNC1 (struct worker_pool*) ; 

__attribute__((used)) static bool FUNC2(struct worker_pool *pool)
{
	return FUNC1(pool) && !FUNC0(pool);
}