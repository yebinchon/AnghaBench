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
struct net_device {int dummy; } ;
struct kobject {int dummy; } ;
struct batadv_store_mesh_work {int /*<<< orphan*/  work; int /*<<< orphan*/  soft_iface_name; struct net_device* net_dev; } ;
struct attribute {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  batadv_event_workqueue ; 
 struct net_device* FUNC1 (struct kobject*) ; 
 int /*<<< orphan*/  batadv_store_mesh_iface_work ; 
 int /*<<< orphan*/  FUNC2 (struct attribute*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct batadv_store_mesh_work* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ssize_t FUNC9(struct kobject *kobj,
				       struct attribute *attr, char *buff,
				       size_t count)
{
	struct net_device *net_dev = FUNC1(kobj);
	struct batadv_store_mesh_work *store_work;

	FUNC2(attr);

	if (buff[count - 1] == '\n')
		buff[count - 1] = '\0';

	if (FUNC7(buff) >= IFNAMSIZ) {
		FUNC5("Invalid parameter for 'mesh_iface' setting received: interface name too long '%s'\n",
		       buff);
		return -EINVAL;
	}

	store_work = FUNC4(sizeof(*store_work), GFP_KERNEL);
	if (!store_work)
		return -ENOMEM;

	FUNC3(net_dev);
	FUNC0(&store_work->work, batadv_store_mesh_iface_work);
	store_work->net_dev = net_dev;
	FUNC8(store_work->soft_iface_name, buff,
		sizeof(store_work->soft_iface_name));

	FUNC6(batadv_event_workqueue, &store_work->work);

	return count;
}