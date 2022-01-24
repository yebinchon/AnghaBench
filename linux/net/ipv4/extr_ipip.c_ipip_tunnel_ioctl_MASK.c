#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_3__ {int version; int ihl; int frag_off; int /*<<< orphan*/  protocol; } ;
struct ip_tunnel_parm {scalar_t__ o_flags; scalar_t__ i_flags; scalar_t__ o_key; scalar_t__ i_key; TYPE_1__ iph; } ;
struct TYPE_4__ {int /*<<< orphan*/  ifru_data; } ;
struct ifreq {TYPE_2__ ifr_ifru; } ;
typedef  int /*<<< orphan*/  p ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  IP_DF ; 
 int SIOCADDTUNNEL ; 
 int SIOCCHGTUNNEL ; 
 scalar_t__ FUNC0 (struct ip_tunnel_parm*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct ip_tunnel_parm*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*,struct ip_tunnel_parm*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	int err = 0;
	struct ip_tunnel_parm p;

	if (FUNC0(&p, ifr->ifr_ifru.ifru_data, sizeof(p)))
		return -EFAULT;

	if (cmd == SIOCADDTUNNEL || cmd == SIOCCHGTUNNEL) {
		if (p.iph.version != 4 ||
		    !FUNC4(p.iph.protocol) ||
		    p.iph.ihl != 5 || (p.iph.frag_off&FUNC2(~IP_DF)))
			return -EINVAL;
	}

	p.i_key = p.o_key = 0;
	p.i_flags = p.o_flags = 0;
	err = FUNC3(dev, &p, cmd);
	if (err)
		return err;

	if (FUNC1(ifr->ifr_ifru.ifru_data, &p, sizeof(p)))
		return -EFAULT;

	return 0;
}