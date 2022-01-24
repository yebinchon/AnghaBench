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
struct wimax_dev {int /*<<< orphan*/  id_table_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,char*,struct wimax_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,char*,struct wimax_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wimax_id_table ; 
 int /*<<< orphan*/  wimax_id_table_lock ; 

void FUNC5(struct wimax_dev *wimax_dev)
{
	FUNC1(3, NULL, "(wimax_dev %p)\n", wimax_dev);
	FUNC3(&wimax_id_table_lock);
	FUNC2(&wimax_dev->id_table_node, &wimax_id_table);
	FUNC4(&wimax_id_table_lock);
	FUNC0(3, NULL, "(wimax_dev %p)\n", wimax_dev);
}