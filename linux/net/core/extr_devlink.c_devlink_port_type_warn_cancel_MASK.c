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
struct devlink_port {int /*<<< orphan*/  type_warn_dw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink_port*) ; 

__attribute__((used)) static void FUNC2(struct devlink_port *devlink_port)
{
	if (!FUNC1(devlink_port))
		return;
	FUNC0(&devlink_port->type_warn_dw);
}