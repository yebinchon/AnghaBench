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
 int /*<<< orphan*/  DEVLINK_PORT_TYPE_WARN_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct devlink_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct devlink_port *devlink_port)
{
	if (!FUNC0(devlink_port))
		return;
	/* Schedule a work to WARN in case driver does not set port
	 * type within timeout.
	 */
	FUNC1(&devlink_port->type_warn_dw,
			      DEVLINK_PORT_TYPE_WARN_TIMEOUT);
}