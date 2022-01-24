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
struct net_device {int /*<<< orphan*/  mrp_port; } ;
struct mrp_port {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mrp_port* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mrp_port*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev)
{
	struct mrp_port *port;

	port = FUNC0(sizeof(*port), GFP_KERNEL);
	if (!port)
		return -ENOMEM;
	FUNC1(dev->mrp_port, port);
	return 0;
}