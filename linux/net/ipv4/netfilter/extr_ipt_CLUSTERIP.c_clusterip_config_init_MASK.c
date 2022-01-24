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
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  ifindex; } ;
struct net {int dummy; } ;
struct ipt_clusterip_tgt_info {int /*<<< orphan*/  hash_initval; int /*<<< orphan*/  hash_mode; int /*<<< orphan*/  num_total_nodes; int /*<<< orphan*/  clustermac; } ;
struct clusterip_net {int /*<<< orphan*/  lock; int /*<<< orphan*/  mutex; int /*<<< orphan*/  procdir; int /*<<< orphan*/  configs; } ;
struct clusterip_config {int /*<<< orphan*/  list; int /*<<< orphan*/  entries; int /*<<< orphan*/  pde; int /*<<< orphan*/  refcount; struct net* net; int /*<<< orphan*/  hash_initval; int /*<<< orphan*/  hash_mode; int /*<<< orphan*/  num_total_nodes; int /*<<< orphan*/  clusterip; int /*<<< orphan*/  clustermac; int /*<<< orphan*/  ifname; int /*<<< orphan*/  ifindex; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct clusterip_config* FUNC0 (int) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct clusterip_config*,struct ipt_clusterip_tgt_info const*) ; 
 int /*<<< orphan*/  FUNC3 (struct clusterip_config*) ; 
 struct clusterip_net* FUNC4 (struct net*) ; 
 int /*<<< orphan*/  clusterip_proc_fops ; 
 struct net_device* FUNC5 (struct net*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct clusterip_config*) ; 
 struct clusterip_config* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct clusterip_config*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct clusterip_config *
FUNC22(struct net *net, const struct ipt_clusterip_tgt_info *i,
		      __be32 ip, const char *iniface)
{
	struct clusterip_net *cn = FUNC4(net);
	struct clusterip_config *c;
	struct net_device *dev;
	int err;

	if (iniface[0] == '\0') {
		FUNC15("Please specify an interface name\n");
		return FUNC0(-EINVAL);
	}

	c = FUNC9(sizeof(*c), GFP_ATOMIC);
	if (!c)
		return FUNC0(-ENOMEM);

	dev = FUNC5(net, iniface);
	if (!dev) {
		FUNC15("no such interface %s\n", iniface);
		FUNC8(c);
		return FUNC0(-ENOENT);
	}
	c->ifindex = dev->ifindex;
	FUNC21(c->ifname, dev->name);
	FUNC12(&c->clustermac, &i->clustermac, ETH_ALEN);
	FUNC6(dev, c->clustermac);
	FUNC7(dev);

	c->clusterip = ip;
	c->num_total_nodes = i->num_total_nodes;
	FUNC2(c, i);
	c->hash_mode = i->hash_mode;
	c->hash_initval = i->hash_initval;
	c->net = net;
	FUNC17(&c->refcount, 1);

	FUNC18(&cn->lock);
	if (FUNC1(net, ip)) {
		err = -EBUSY;
		goto out_config_put;
	}

	FUNC10(&c->list, &cn->configs);
	FUNC19(&cn->lock);

#ifdef CONFIG_PROC_FS
	{
		char buffer[16];

		/* create proc dir entry */
		sprintf(buffer, "%pI4", &ip);
		mutex_lock(&cn->mutex);
		c->pde = proc_create_data(buffer, 0600,
					  cn->procdir,
					  &clusterip_proc_fops, c);
		mutex_unlock(&cn->mutex);
		if (!c->pde) {
			err = -ENOMEM;
			goto err;
		}
	}
#endif

	FUNC17(&c->entries, 1);
	return c;

#ifdef CONFIG_PROC_FS
err:
#endif
	FUNC18(&cn->lock);
	FUNC11(&c->list);
out_config_put:
	FUNC19(&cn->lock);
	FUNC3(c);
	return FUNC0(err);
}