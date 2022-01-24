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
typedef  int /*<<< orphan*/  __u64 ;
typedef  int __u32 ;

/* Variables and functions */
 int IF_NAMESIZE ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(__u32 ifindex, __u64 ns_dev, __u64 ns_inode)
{
	char name[IF_NAMESIZE];

	if (!ifindex)
		return;

	FUNC1("  offloaded_to ");
	if (FUNC0(ifindex, ns_dev, ns_inode, name))
		FUNC1("%s", name);
	else
		FUNC1("ifindex %u ns_dev %llu ns_ino %llu",
		       ifindex, ns_dev, ns_inode);
}