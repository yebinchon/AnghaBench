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
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int IF_NAMESIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC6(__u32 ifindex, __u64 ns_dev, __u64 ns_inode)
{
	char name[IF_NAMESIZE];

	if (!ifindex)
		return;

	FUNC2(json_wtr, "dev");
	FUNC3(json_wtr);
	FUNC5(json_wtr, "ifindex", ifindex);
	FUNC5(json_wtr, "ns_dev", ns_dev);
	FUNC5(json_wtr, "ns_inode", ns_inode);
	if (FUNC0(ifindex, ns_dev, ns_inode, name))
		FUNC4(json_wtr, "ifname", name);
	FUNC1(json_wtr);
}