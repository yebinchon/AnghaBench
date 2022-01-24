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
typedef  int /*<<< orphan*/  switchdev_deferred_func_t ;
struct switchdev_deferred_item {int /*<<< orphan*/  list; int /*<<< orphan*/  data; int /*<<< orphan*/ * func; struct net_device* dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  deferred ; 
 int /*<<< orphan*/  deferred_lock ; 
 int /*<<< orphan*/  deferred_process_work ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct switchdev_deferred_item* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev,
				      const void *data, size_t data_len,
				      switchdev_deferred_func_t *func)
{
	struct switchdev_deferred_item *dfitem;

	dfitem = FUNC1(sizeof(*dfitem) + data_len, GFP_ATOMIC);
	if (!dfitem)
		return -ENOMEM;
	dfitem->dev = dev;
	dfitem->func = func;
	FUNC3(dfitem->data, data, data_len);
	FUNC0(dev);
	FUNC5(&deferred_lock);
	FUNC2(&dfitem->list, &deferred);
	FUNC6(&deferred_lock);
	FUNC4(&deferred_process_work);
	return 0;
}