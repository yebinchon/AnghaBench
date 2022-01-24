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
typedef  int u8 ;
struct cfpkt {int dummy; } ;
struct cfctrl {int* loop_linkused; int /*<<< orphan*/  loop_linkid_lock; } ;

/* Variables and functions */
#define  CFCTRL_CMD_LINK_DESTROY 129 
#define  CFCTRL_CMD_LINK_SETUP 128 
 int CFCTRL_SRV_UTIL ; 
 int /*<<< orphan*/  FUNC0 (struct cfpkt*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cfpkt*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct cfctrl *ctrl, int cmd, struct cfpkt *pkt)
{
	static int last_linkid;
	static int dec;
	u8 linkid, linktype, tmp;
	switch (cmd) {
	case CFCTRL_CMD_LINK_SETUP:
		FUNC2(&ctrl->loop_linkid_lock);
		if (!dec) {
			for (linkid = last_linkid + 1; linkid < 254; linkid++)
				if (!ctrl->loop_linkused[linkid])
					goto found;
		}
		dec = 1;
		for (linkid = last_linkid - 1; linkid > 1; linkid--)
			if (!ctrl->loop_linkused[linkid])
				goto found;
		FUNC3(&ctrl->loop_linkid_lock);
		return -1;
found:
		if (linkid < 10)
			dec = 0;

		if (!ctrl->loop_linkused[linkid])
			ctrl->loop_linkused[linkid] = 1;

		last_linkid = linkid;

		FUNC0(pkt, &linkid, 1);
		FUNC3(&ctrl->loop_linkid_lock);
		FUNC1(pkt, &linktype, 1);
		if (linktype ==  CFCTRL_SRV_UTIL) {
			tmp = 0x01;
			FUNC0(pkt, &tmp, 1);
			FUNC0(pkt, &tmp, 1);
		}
		break;

	case CFCTRL_CMD_LINK_DESTROY:
		FUNC2(&ctrl->loop_linkid_lock);
		FUNC1(pkt, &linkid, 1);
		ctrl->loop_linkused[linkid] = 0;
		FUNC3(&ctrl->loop_linkid_lock);
		break;
	default:
		break;
	}
	return 0;
}