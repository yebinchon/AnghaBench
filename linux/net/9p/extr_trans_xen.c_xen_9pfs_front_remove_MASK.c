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
struct xenbus_device {int /*<<< orphan*/  dev; } ;
struct xen_9pfs_front_priv {int dummy; } ;

/* Variables and functions */
 struct xen_9pfs_front_priv* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xen_9pfs_front_priv*) ; 

__attribute__((used)) static int FUNC3(struct xenbus_device *dev)
{
	struct xen_9pfs_front_priv *priv = FUNC0(&dev->dev);

	FUNC1(&dev->dev, NULL);
	FUNC2(priv);
	return 0;
}