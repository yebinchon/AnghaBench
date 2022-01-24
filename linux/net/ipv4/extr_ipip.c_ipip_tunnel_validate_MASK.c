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
typedef  scalar_t__ u8 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t IFLA_IPTUN_PROTO ; 
 scalar_t__ IPPROTO_IPIP ; 
 scalar_t__ IPPROTO_MPLS ; 
 scalar_t__ FUNC0 (struct nlattr*) ; 

__attribute__((used)) static int FUNC1(struct nlattr *tb[], struct nlattr *data[],
				struct netlink_ext_ack *extack)
{
	u8 proto;

	if (!data || !data[IFLA_IPTUN_PROTO])
		return 0;

	proto = FUNC0(data[IFLA_IPTUN_PROTO]);
	if (proto != IPPROTO_IPIP && proto != IPPROTO_MPLS && proto != 0)
		return -EINVAL;

	return 0;
}