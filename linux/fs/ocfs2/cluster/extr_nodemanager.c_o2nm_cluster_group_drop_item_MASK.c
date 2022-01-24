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
struct o2nm_cluster {int /*<<< orphan*/  cl_group; } ;
struct config_item {int dummy; } ;
struct config_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct o2nm_cluster* o2nm_single_cluster ; 
 struct o2nm_cluster* FUNC3 (struct config_item*) ; 

__attribute__((used)) static void FUNC4(struct config_group *group, struct config_item *item)
{
	struct o2nm_cluster *cluster = FUNC3(item);

	FUNC0(o2nm_single_cluster != cluster);
	o2nm_single_cluster = NULL;

	FUNC2(&cluster->cl_group);
	FUNC1(item);
}