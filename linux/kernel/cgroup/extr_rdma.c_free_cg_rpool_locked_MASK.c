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
struct rdmacg_resource_pool {int /*<<< orphan*/  dev_node; int /*<<< orphan*/  cg_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rdmacg_resource_pool*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rdmacg_mutex ; 

__attribute__((used)) static void FUNC3(struct rdmacg_resource_pool *rpool)
{
	FUNC2(&rdmacg_mutex);

	FUNC1(&rpool->cg_node);
	FUNC1(&rpool->dev_node);
	FUNC0(rpool);
}