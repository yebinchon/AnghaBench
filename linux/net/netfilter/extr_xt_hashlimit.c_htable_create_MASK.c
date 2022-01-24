#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int8_t ;
struct TYPE_2__ {unsigned int size; int max; int /*<<< orphan*/  gc_interval; } ;
struct xt_hashlimit_htable {int use; int rnd_initialized; int /*<<< orphan*/  node; TYPE_1__ cfg; int /*<<< orphan*/  gc_work; struct net* net; int /*<<< orphan*/  name; int /*<<< orphan*/ * pde; int /*<<< orphan*/  lock; scalar_t__ family; scalar_t__ count; int /*<<< orphan*/ * hash; } ;
struct seq_operations {int dummy; } ;
struct net {int dummy; } ;
struct hlist_head {int dummy; } ;
struct hashlimit_net {int /*<<< orphan*/  htables; int /*<<< orphan*/  ip6t_hashlimit; int /*<<< orphan*/  ipt_hashlimit; } ;
struct hashlimit_cfg3 {int size; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ NFPROTO_IPV4 ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC2 (TYPE_1__*,void*,int) ; 
 struct seq_operations dl_seq_ops ; 
 struct seq_operations dl_seq_ops_v1 ; 
 struct seq_operations dl_seq_ops_v2 ; 
 int /*<<< orphan*/  hash ; 
 struct hashlimit_net* FUNC3 (struct net*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  htable_gc ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct seq_operations const*,struct xt_hashlimit_htable*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct xt_hashlimit_htable*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 
 unsigned long FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct xt_hashlimit_htable*) ; 
 struct xt_hashlimit_htable* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct net *net, struct hashlimit_cfg3 *cfg,
			 const char *name, u_int8_t family,
			 struct xt_hashlimit_htable **out_hinfo,
			 int revision)
{
	struct hashlimit_net *hashlimit_net = FUNC3(net);
	struct xt_hashlimit_htable *hinfo;
	const struct seq_operations *ops;
	unsigned int size, i;
	unsigned long nr_pages = FUNC12();
	int ret;

	if (cfg->size) {
		size = cfg->size;
	} else {
		size = (nr_pages << PAGE_SHIFT) / 16384 /
		       sizeof(struct hlist_head);
		if (nr_pages > 1024 * 1024 * 1024 / PAGE_SIZE)
			size = 8192;
		if (size < 16)
			size = 16;
	}
	/* FIXME: don't use vmalloc() here or anywhere else -HW */
	hinfo = FUNC14(FUNC11(hinfo, hash, size));
	if (hinfo == NULL)
		return -ENOMEM;
	*out_hinfo = hinfo;

	/* copy match config into hashtable config */
	ret = FUNC2(&hinfo->cfg, (void *)cfg, 3);
	if (ret) {
		FUNC13(hinfo);
		return ret;
	}

	hinfo->cfg.size = size;
	if (hinfo->cfg.max == 0)
		hinfo->cfg.max = 8 * hinfo->cfg.size;
	else if (hinfo->cfg.max < hinfo->cfg.size)
		hinfo->cfg.max = hinfo->cfg.size;

	for (i = 0; i < hinfo->cfg.size; i++)
		FUNC1(&hinfo->hash[i]);

	hinfo->use = 1;
	hinfo->count = 0;
	hinfo->family = family;
	hinfo->rnd_initialized = false;
	hinfo->name = FUNC6(name, GFP_KERNEL);
	if (!hinfo->name) {
		FUNC13(hinfo);
		return -ENOMEM;
	}
	FUNC10(&hinfo->lock);

	switch (revision) {
	case 1:
		ops = &dl_seq_ops_v1;
		break;
	case 2:
		ops = &dl_seq_ops_v2;
		break;
	default:
		ops = &dl_seq_ops;
	}

	hinfo->pde = FUNC8(name, 0,
		(family == NFPROTO_IPV4) ?
		hashlimit_net->ipt_hashlimit : hashlimit_net->ip6t_hashlimit,
		ops, hinfo);
	if (hinfo->pde == NULL) {
		FUNC5(hinfo->name);
		FUNC13(hinfo);
		return -ENOMEM;
	}
	hinfo->net = net;

	FUNC0(&hinfo->gc_work, htable_gc);
	FUNC9(system_power_efficient_wq, &hinfo->gc_work,
			   FUNC7(hinfo->cfg.gc_interval));

	FUNC4(&hinfo->node, &hashlimit_net->htables);

	return 0;
}