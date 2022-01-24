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
struct net_bridge_port {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOENT ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_bridge_port*,struct net_device*) ; 
 char* FUNC3 (char*,char) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct net_bridge_port *p, char *buf)
{
	struct net_device *backup_dev = NULL;
	char *nl = FUNC3(buf, '\n');

	if (nl)
		*nl = '\0';

	if (FUNC4(buf) > 0) {
		backup_dev = FUNC0(FUNC1(p->dev), buf);
		if (!backup_dev)
			return -ENOENT;
	}

	return FUNC2(p, backup_dev);
}