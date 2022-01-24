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
struct TYPE_2__ {unsigned char id_len; int /*<<< orphan*/  id; } ;
struct devlink_port_attrs {int set; int flavour; int switch_port; TYPE_1__ switch_id; } ;
struct devlink_port {int registered; struct devlink_port_attrs attrs; } ;
typedef  enum devlink_port_flavour { ____Placeholder_devlink_port_flavour } devlink_port_flavour ;

/* Variables and functions */
 int EEXIST ; 
 unsigned char MAX_PHYS_ITEM_ID_LEN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char const*,unsigned char) ; 

__attribute__((used)) static int FUNC2(struct devlink_port *devlink_port,
				    enum devlink_port_flavour flavour,
				    const unsigned char *switch_id,
				    unsigned char switch_id_len)
{
	struct devlink_port_attrs *attrs = &devlink_port->attrs;

	if (FUNC0(devlink_port->registered))
		return -EEXIST;
	attrs->set = true;
	attrs->flavour = flavour;
	if (switch_id) {
		attrs->switch_port = true;
		if (FUNC0(switch_id_len > MAX_PHYS_ITEM_ID_LEN))
			switch_id_len = MAX_PHYS_ITEM_ID_LEN;
		FUNC1(attrs->switch_id.id, switch_id, switch_id_len);
		attrs->switch_id.id_len = switch_id_len;
	} else {
		attrs->switch_port = false;
	}
	return 0;
}