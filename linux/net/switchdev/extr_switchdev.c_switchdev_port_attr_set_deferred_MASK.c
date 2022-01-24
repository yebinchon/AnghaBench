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
struct switchdev_attr {int /*<<< orphan*/  complete_priv; int /*<<< orphan*/  (* complete ) (struct net_device*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  id; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,struct switchdev_attr const*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,
					     const void *data)
{
	const struct switchdev_attr *attr = data;
	int err;

	err = FUNC2(dev, attr);
	if (err && err != -EOPNOTSUPP)
		FUNC0(dev, "failed (err=%d) to set attribute (id=%d)\n",
			   err, attr->id);
	if (attr->complete)
		attr->complete(dev, err, attr->complete_priv);
}