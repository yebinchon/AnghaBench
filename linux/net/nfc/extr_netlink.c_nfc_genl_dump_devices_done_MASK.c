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
struct netlink_callback {scalar_t__* args; } ;
struct class_dev_iter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct class_dev_iter*) ; 
 int /*<<< orphan*/  FUNC1 (struct class_dev_iter*) ; 

__attribute__((used)) static int FUNC2(struct netlink_callback *cb)
{
	struct class_dev_iter *iter = (struct class_dev_iter *) cb->args[0];

	FUNC1(iter);
	FUNC0(iter);

	return 0;
}