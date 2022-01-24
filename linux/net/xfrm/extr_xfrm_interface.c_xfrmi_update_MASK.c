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
struct xfrm_if_parms {int dummy; } ;
struct xfrm_if {int /*<<< orphan*/  dev; struct net* net; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct xfrmi_net* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct xfrm_if*,struct xfrm_if_parms*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfrmi_net*,struct xfrm_if*) ; 
 int /*<<< orphan*/  xfrmi_net_id ; 
 int /*<<< orphan*/  FUNC5 (struct xfrmi_net*,struct xfrm_if*) ; 

__attribute__((used)) static int FUNC6(struct xfrm_if *xi, struct xfrm_if_parms *p)
{
	struct net *net = xi->net;
	struct xfrmi_net *xfrmn = FUNC0(net, xfrmi_net_id);
	int err;

	FUNC5(xfrmn, xi);
	FUNC2();
	err = FUNC3(xi, p);
	FUNC4(xfrmn, xi);
	FUNC1(xi->dev);
	return err;
}