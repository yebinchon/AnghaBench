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
struct ovs_header {int dummy; } ;
struct ovs_dp_stats {int dummy; } ;
struct ovs_dp_megaflow_stats {int dummy; } ;

/* Variables and functions */
 int IFNAMSIZ ; 
 size_t FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static size_t FUNC3(void)
{
	size_t msgsize = FUNC0(sizeof(struct ovs_header));

	msgsize += FUNC1(IFNAMSIZ);
	msgsize += FUNC2(sizeof(struct ovs_dp_stats));
	msgsize += FUNC2(sizeof(struct ovs_dp_megaflow_stats));
	msgsize += FUNC1(sizeof(u32)); /* OVS_DP_ATTR_USER_FEATURES */

	return msgsize;
}