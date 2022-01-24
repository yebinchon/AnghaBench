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
struct net_device {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 

__attribute__((used)) static size_t FUNC1(const struct net_device *dev)
{
	return
		/* IFLA_VTI_LINK */
		FUNC0(4) +
		/* IFLA_VTI_IKEY */
		FUNC0(4) +
		/* IFLA_VTI_OKEY */
		FUNC0(4) +
		/* IFLA_VTI_LOCAL */
		FUNC0(4) +
		/* IFLA_VTI_REMOTE */
		FUNC0(4) +
		/* IFLA_VTI_FWMARK */
		FUNC0(4) +
		0;
}