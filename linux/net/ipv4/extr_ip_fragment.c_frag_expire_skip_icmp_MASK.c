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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ IP_DEFRAG_AF_PACKET ; 
 int /*<<< orphan*/  IP_DEFRAG_CONNTRACK_BRIDGE_IN ; 
 int /*<<< orphan*/  IP_DEFRAG_CONNTRACK_IN ; 
 int /*<<< orphan*/  __IP_DEFRAG_CONNTRACK_BRIDGE_IN ; 
 int /*<<< orphan*/  __IP_DEFRAG_CONNTRACK_IN_END ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(u32 user)
{
	return user == IP_DEFRAG_AF_PACKET ||
	       FUNC0(user, IP_DEFRAG_CONNTRACK_IN,
					 __IP_DEFRAG_CONNTRACK_IN_END) ||
	       FUNC0(user, IP_DEFRAG_CONNTRACK_BRIDGE_IN,
					 __IP_DEFRAG_CONNTRACK_BRIDGE_IN);
}