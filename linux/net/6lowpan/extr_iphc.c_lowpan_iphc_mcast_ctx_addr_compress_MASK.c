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
typedef  int /*<<< orphan*/  u8 ;
struct lowpan_iphc_ctx {int dummy; } ;
struct in6_addr {int /*<<< orphan*/ * s6_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOWPAN_IPHC_DAM_00 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static u8 FUNC2(u8 **hc_ptr,
					      const struct lowpan_iphc_ctx *ctx,
					      const struct in6_addr *ipaddr)
{
	u8 data[6];

	/* flags/scope, reserved (RIID) */
	FUNC1(data, &ipaddr->s6_addr[1], 2);
	/* group ID */
	FUNC1(&data[1], &ipaddr->s6_addr[11], 4);
	FUNC0(hc_ptr, data, 6);

	return LOWPAN_IPHC_DAM_00;
}