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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct nlattr {int dummy; } ;
struct ifinfomsg {int dummy; } ;

/* Variables and functions */
 int IFNAMSIZ ; 
 int MAX_ADDR_LEN ; 
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 

__attribute__((used)) static inline size_t FUNC2(void)
{
	return FUNC0(sizeof(struct ifinfomsg))
		+ FUNC1(IFNAMSIZ)	/* IFLA_IFNAME */
		+ FUNC1(MAX_ADDR_LEN)	/* IFLA_ADDRESS */
		+ FUNC1(sizeof(u32))	/* IFLA_MASTER */
		+ FUNC1(sizeof(u32))	/* IFLA_MTU */
		+ FUNC1(sizeof(u32))	/* IFLA_LINK */
		+ FUNC1(sizeof(u32))	/* IFLA_OPERSTATE */
		+ FUNC1(sizeof(u8))	/* IFLA_PROTINFO */
		+ FUNC1(sizeof(struct nlattr))	/* IFLA_AF_SPEC */
		+ FUNC1(sizeof(u16))	/* IFLA_BRIDGE_FLAGS */
		+ FUNC1(sizeof(u16));	/* IFLA_BRIDGE_MODE */
}