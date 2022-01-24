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
struct nlattr {int dummy; } ;
struct ifinfomsg {int /*<<< orphan*/  ifi_index; } ;

/* Variables and functions */
 size_t IFLA_IFNAME ; 
 size_t IFLA_XDP ; 
 int FUNC0 (struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 

int FUNC2(struct ifinfomsg *ifinfo, struct nlattr **tb)
{
	if (!tb[IFLA_XDP])
		return 0;

	return FUNC0(tb[IFLA_XDP], ifinfo->ifi_index,
			       FUNC1(tb[IFLA_IFNAME]));
}