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
struct ovs_header {int dummy; } ;
struct dp_upcall_info {scalar_t__ mru; scalar_t__ actions_len; scalar_t__ egress_tun_info; TYPE_1__* userdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  nla_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int) ; 
 size_t FUNC2 (int) ; 
 int FUNC3 () ; 
 int FUNC4 () ; 

__attribute__((used)) static size_t FUNC5(const struct dp_upcall_info *upcall_info,
			      unsigned int hdrlen, int actions_attrlen)
{
	size_t size = FUNC1(sizeof(struct ovs_header))
		+ FUNC2(hdrlen) /* OVS_PACKET_ATTR_PACKET */
		+ FUNC2(FUNC3()) /* OVS_PACKET_ATTR_KEY */
		+ FUNC2(sizeof(unsigned int)); /* OVS_PACKET_ATTR_LEN */

	/* OVS_PACKET_ATTR_USERDATA */
	if (upcall_info->userdata)
		size += FUNC0(upcall_info->userdata->nla_len);

	/* OVS_PACKET_ATTR_EGRESS_TUN_KEY */
	if (upcall_info->egress_tun_info)
		size += FUNC2(FUNC4());

	/* OVS_PACKET_ATTR_ACTIONS */
	if (upcall_info->actions_len)
		size += FUNC2(actions_attrlen);

	/* OVS_PACKET_ATTR_MRU */
	if (upcall_info->mru)
		size += FUNC2(sizeof(upcall_info->mru));

	return size;
}