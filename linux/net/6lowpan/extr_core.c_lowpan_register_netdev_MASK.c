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
typedef  enum lowpan_lltypes { ____Placeholder_lowpan_lltypes } lowpan_lltypes ;

/* Variables and functions */
 int FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(struct net_device *dev,
			   enum lowpan_lltypes lltype)
{
	int ret;

	FUNC1();
	ret = FUNC0(dev, lltype);
	FUNC2();
	return ret;
}