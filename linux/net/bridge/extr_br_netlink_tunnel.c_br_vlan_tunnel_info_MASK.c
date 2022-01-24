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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct net_bridge_port {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  RTM_DELLINK 129 
#define  RTM_SETLINK 128 
 int FUNC0 (struct net_bridge_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct net_bridge_port *p, int cmd,
			       u16 vid, u32 tun_id, bool *changed)
{
	int err = 0;

	if (!p)
		return -EINVAL;

	switch (cmd) {
	case RTM_SETLINK:
		err = FUNC0(p, vid, tun_id);
		if (!err)
			*changed = true;
		break;
	case RTM_DELLINK:
		if (!FUNC1(p, vid))
			*changed = true;
		break;
	}

	return err;
}