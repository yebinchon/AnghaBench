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
typedef  int /*<<< orphan*/  u32 ;
struct svc_program {int /*<<< orphan*/  pg_prog; int /*<<< orphan*/  pg_name; } ;
struct net {int dummy; } ;

/* Variables and functions */
 unsigned short IPPROTO_UDP ; 
 int FUNC0 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned short,int) ; 

int FUNC2(struct net *net,
			    const struct svc_program *progp,
			    u32 version, int family,
			    unsigned short proto,
			    unsigned short port)
{
	FUNC1("svc: svc_register(%sv%d, %s, %u, %u)\n",
		progp->pg_name, version,
		proto == IPPROTO_UDP?  "udp" : "tcp",
		port, family);

	return FUNC0(net, progp->pg_name, progp->pg_prog,
				version, family, proto, port);

}