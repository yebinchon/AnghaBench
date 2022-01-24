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
struct zs_pool {int /*<<< orphan*/  zspage_cachep; int /*<<< orphan*/  handle_cachep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct zs_pool *pool)
{
	FUNC0(pool->handle_cachep);
	FUNC0(pool->zspage_cachep);
}