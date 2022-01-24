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
struct switchdev_obj {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWITCHDEV_PORT_OBJ_DEL ; 
 int FUNC0 (int /*<<< orphan*/ ,struct net_device*,struct switchdev_obj const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct net_device *dev,
				      const struct switchdev_obj *obj)
{
	return FUNC0(SWITCHDEV_PORT_OBJ_DEL,
					 dev, obj, NULL, NULL);
}