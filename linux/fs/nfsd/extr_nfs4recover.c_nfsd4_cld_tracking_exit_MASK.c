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
struct nfsd_net {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct nfsd_net* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsd_net*) ; 
 int /*<<< orphan*/  FUNC3 (struct net*) ; 
 int /*<<< orphan*/  nfsd_net_id ; 

__attribute__((used)) static void
FUNC4(struct net *net)
{
	struct nfsd_net *nn = FUNC0(net, nfsd_net_id);

	FUNC2(nn);
	FUNC3(net);
	FUNC1(net);
}