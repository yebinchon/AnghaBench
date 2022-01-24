#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_bridge_port {TYPE_1__* dev; int /*<<< orphan*/  backup_port; } ;
typedef  int ssize_t ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 struct net_bridge_port* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC4(struct net_bridge_port *p, char *buf)
{
	struct net_bridge_port *backup_p;
	int ret = 0;

	FUNC1();
	backup_p = FUNC0(p->backup_port);
	if (backup_p)
		ret = FUNC3(buf, "%s\n", backup_p->dev->name);
	FUNC2();

	return ret;
}