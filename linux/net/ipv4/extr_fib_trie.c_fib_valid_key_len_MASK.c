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
typedef  int u32 ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int KEYLENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 

__attribute__((used)) static bool FUNC1(u32 key, u8 plen, struct netlink_ext_ack *extack)
{
	if (plen > KEYLENGTH) {
		FUNC0(extack, "Invalid prefix length");
		return false;
	}

	if ((plen < KEYLENGTH) && (key << plen)) {
		FUNC0(extack,
			       "Invalid prefix for given prefix length");
		return false;
	}

	return true;
}