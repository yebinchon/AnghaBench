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
struct nfsd_net {struct cld_net* cld_net; } ;
struct net {int dummy; } ;
struct cld_net {scalar_t__ cn_tfm; int /*<<< orphan*/  cn_pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct cld_net*) ; 
 struct nfsd_net* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct net *net)
{
	struct nfsd_net *nn = FUNC2(net, nfsd_net_id);
	struct cld_net *cn = nn->cld_net;

	FUNC3(net, cn->cn_pipe);
	FUNC4(cn->cn_pipe);
	if (cn->cn_tfm)
		FUNC0(cn->cn_tfm);
	FUNC1(nn->cld_net);
	nn->cld_net = NULL;
}