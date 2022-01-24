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
typedef  int /*<<< orphan*/  uint32_t ;
struct sw_flow_id {int ufid_len; } ;
struct sw_flow_actions {int orig_len; } ;
struct ovs_header {int dummy; } ;
struct ovs_flow_stats {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 size_t FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct sw_flow_id const*) ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sw_flow_id const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC8(const struct sw_flow_actions *acts,
				    const struct sw_flow_id *sfid,
				    uint32_t ufid_flags)
{
	size_t len = FUNC0(sizeof(struct ovs_header));

	/* OVS_FLOW_ATTR_UFID */
	if (sfid && FUNC3(sfid))
		len += FUNC1(sfid->ufid_len);

	/* OVS_FLOW_ATTR_KEY */
	if (!sfid || FUNC6(sfid, ufid_flags))
		len += FUNC1(FUNC4());

	/* OVS_FLOW_ATTR_MASK */
	if (FUNC7(ufid_flags))
		len += FUNC1(FUNC4());

	/* OVS_FLOW_ATTR_ACTIONS */
	if (FUNC5(ufid_flags))
		len += FUNC1(acts->orig_len);

	return len
		+ FUNC2(sizeof(struct ovs_flow_stats)) /* OVS_FLOW_ATTR_STATS */
		+ FUNC1(1) /* OVS_FLOW_ATTR_TCP_FLAGS */
		+ FUNC2(8); /* OVS_FLOW_ATTR_USED */
}