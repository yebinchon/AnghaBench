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
struct net {int /*<<< orphan*/  proc_net; } ;
struct clusterip_net {int /*<<< orphan*/  mutex; int /*<<< orphan*/  procdir; int /*<<< orphan*/  lock; int /*<<< orphan*/  configs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cip_arp_ops ; 
 struct clusterip_net* FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net *net)
{
	struct clusterip_net *cn = FUNC1(net);
	int ret;

	FUNC0(&cn->configs);

	FUNC7(&cn->lock);

	ret = FUNC3(net, &cip_arp_ops);
	if (ret < 0)
		return ret;

#ifdef CONFIG_PROC_FS
	cn->procdir = proc_mkdir("ipt_CLUSTERIP", net->proc_net);
	if (!cn->procdir) {
		nf_unregister_net_hook(net, &cip_arp_ops);
		pr_err("Unable to proc dir entry\n");
		return -ENOMEM;
	}
	mutex_init(&cn->mutex);
#endif /* CONFIG_PROC_FS */

	return 0;
}