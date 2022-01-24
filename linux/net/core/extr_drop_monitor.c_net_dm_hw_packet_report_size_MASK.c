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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct net_dm_hw_metadata {int /*<<< orphan*/  trap_name; int /*<<< orphan*/  trap_group_name; } ;
struct TYPE_2__ {scalar_t__ hdrsize; } ;

/* Variables and functions */
 scalar_t__ GENL_HDRLEN ; 
 size_t FUNC0 (size_t) ; 
 size_t FUNC1 () ; 
 TYPE_1__ net_drop_monitor_family ; 
 size_t FUNC2 (size_t) ; 
 size_t FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC5(size_t payload_len,
			     const struct net_dm_hw_metadata *hw_metadata)
{
	size_t size;

	size = FUNC3(GENL_HDRLEN + net_drop_monitor_family.hdrsize);

	return FUNC0(size) +
	       /* NET_DM_ATTR_ORIGIN */
	       FUNC2(sizeof(u16)) +
	       /* NET_DM_ATTR_HW_TRAP_GROUP_NAME */
	       FUNC2(FUNC4(hw_metadata->trap_group_name) + 1) +
	       /* NET_DM_ATTR_HW_TRAP_NAME */
	       FUNC2(FUNC4(hw_metadata->trap_name) + 1) +
	       /* NET_DM_ATTR_IN_PORT */
	       FUNC1() +
	       /* NET_DM_ATTR_TIMESTAMP */
	       FUNC2(sizeof(u64)) +
	       /* NET_DM_ATTR_ORIG_LEN */
	       FUNC2(sizeof(u32)) +
	       /* NET_DM_ATTR_PROTO */
	       FUNC2(sizeof(u16)) +
	       /* NET_DM_ATTR_PAYLOAD */
	       FUNC2(payload_len);
}