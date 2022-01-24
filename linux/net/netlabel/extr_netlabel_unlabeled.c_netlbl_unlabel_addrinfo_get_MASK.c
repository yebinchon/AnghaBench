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
typedef  int u32 ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct genl_info {scalar_t__* attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t NLBL_UNLABEL_A_IPV4ADDR ; 
 size_t NLBL_UNLABEL_A_IPV4MASK ; 
 size_t NLBL_UNLABEL_A_IPV6ADDR ; 
 size_t NLBL_UNLABEL_A_IPV6MASK ; 
 void* FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct genl_info *info,
				       void **addr,
				       void **mask,
				       u32 *len)
{
	u32 addr_len;

	if (info->attrs[NLBL_UNLABEL_A_IPV4ADDR] &&
	    info->attrs[NLBL_UNLABEL_A_IPV4MASK]) {
		addr_len = FUNC1(info->attrs[NLBL_UNLABEL_A_IPV4ADDR]);
		if (addr_len != sizeof(struct in_addr) &&
		    addr_len != FUNC1(info->attrs[NLBL_UNLABEL_A_IPV4MASK]))
			return -EINVAL;
		*len = addr_len;
		*addr = FUNC0(info->attrs[NLBL_UNLABEL_A_IPV4ADDR]);
		*mask = FUNC0(info->attrs[NLBL_UNLABEL_A_IPV4MASK]);
		return 0;
	} else if (info->attrs[NLBL_UNLABEL_A_IPV6ADDR]) {
		addr_len = FUNC1(info->attrs[NLBL_UNLABEL_A_IPV6ADDR]);
		if (addr_len != sizeof(struct in6_addr) &&
		    addr_len != FUNC1(info->attrs[NLBL_UNLABEL_A_IPV6MASK]))
			return -EINVAL;
		*len = addr_len;
		*addr = FUNC0(info->attrs[NLBL_UNLABEL_A_IPV6ADDR]);
		*mask = FUNC0(info->attrs[NLBL_UNLABEL_A_IPV6MASK]);
		return 0;
	}

	return -EINVAL;
}