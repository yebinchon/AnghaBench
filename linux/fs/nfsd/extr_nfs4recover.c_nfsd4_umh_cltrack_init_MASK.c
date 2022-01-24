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
struct nfsd_net {int /*<<< orphan*/  boot_time; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct net init_net ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct nfsd_net* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(struct net *net)
{
	int ret;
	struct nfsd_net *nn = FUNC1(net, nfsd_net_id);
	char *grace_start = FUNC2(nn->boot_time);

	/* XXX: The usermode helper s not working in container yet. */
	if (net != &init_net) {
		FUNC4("NFSD: attempt to initialize umh client tracking in a container ignored.\n");
		FUNC0(grace_start);
		return -EINVAL;
	}

	ret = FUNC3("init", NULL, grace_start, NULL);
	FUNC0(grace_start);
	if (!ret)
		FUNC5("NFSD: Using UMH upcall client tracking operations.\n");
	return ret;
}