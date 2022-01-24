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
struct xfrmi_net {int dummy; } ;
struct xfrm_if {int /*<<< orphan*/  net; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct xfrmi_net* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xfrm_if* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  xfrmi_net_id ; 
 int /*<<< orphan*/  FUNC3 (struct xfrmi_net*,struct xfrm_if*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct xfrm_if *xi = FUNC2(dev);
	struct xfrmi_net *xfrmn = FUNC1(xi->net, xfrmi_net_id);

	FUNC3(xfrmn, xi);
	FUNC0(dev);
}