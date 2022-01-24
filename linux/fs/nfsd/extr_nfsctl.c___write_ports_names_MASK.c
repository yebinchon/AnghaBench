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
struct nfsd_net {int /*<<< orphan*/ * nfsd_serv; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIMPLE_TRANSACTION_LIMIT ; 
 struct nfsd_net* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC2(char *buf, struct net *net)
{
	struct nfsd_net *nn = FUNC0(net, nfsd_net_id);

	if (nn->nfsd_serv == NULL)
		return 0;
	return FUNC1(nn->nfsd_serv, buf, SIMPLE_TRANSACTION_LIMIT);
}