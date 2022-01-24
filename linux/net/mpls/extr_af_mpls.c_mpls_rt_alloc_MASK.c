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
struct mpls_route {int rt_nhn; int rt_nhn_alive; int rt_nh_size; int /*<<< orphan*/  rt_via_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct mpls_route* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t MAX_MPLS_ROUTE_MEM ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct mpls_route* FUNC3 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mpls_route *FUNC4(u8 num_nh, u8 max_alen, u8 max_labels)
{
	u8 nh_size = FUNC1(max_labels, max_alen);
	struct mpls_route *rt;
	size_t size;

	size = sizeof(*rt) + num_nh * nh_size;
	if (size > MAX_MPLS_ROUTE_MEM)
		return FUNC0(-EINVAL);

	rt = FUNC3(size, GFP_KERNEL);
	if (!rt)
		return FUNC0(-ENOMEM);

	rt->rt_nhn = num_nh;
	rt->rt_nhn_alive = num_nh;
	rt->rt_nh_size = nh_size;
	rt->rt_via_offset = FUNC2(max_labels);

	return rt;
}