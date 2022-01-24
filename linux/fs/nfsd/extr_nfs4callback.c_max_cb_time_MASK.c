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
typedef  int /*<<< orphan*/  time_t ;
struct nfsd_net {int nfsd4_lease; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct nfsd_net* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 

__attribute__((used)) static int FUNC2(struct net *net)
{
	struct nfsd_net *nn = FUNC1(net, nfsd_net_id);
	return FUNC0(nn->nfsd4_lease/10, (time_t)1) * HZ;
}