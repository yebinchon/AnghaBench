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
struct net {int dummy; } ;

/* Variables and functions */
#define  NFPROTO_BRIDGE 129 
#define  NFPROTO_INET 128 
 int FUNC0 (struct net*,int const) ; 
 int FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int const) ; 

int FUNC3(struct net *net, u8 nfproto)
{
	int err;

	switch (nfproto) {
	case NFPROTO_INET:
		err = FUNC1(net);
		break;
	case NFPROTO_BRIDGE:
		err = FUNC0(net, NFPROTO_BRIDGE);
		if (err < 0)
			return err;

		err = FUNC1(net);
		if (err < 0) {
			FUNC2(net, NFPROTO_BRIDGE);
			return err;
		}
		break;
	default:
		err = FUNC0(net, nfproto);
		break;
	}
	return err;
}