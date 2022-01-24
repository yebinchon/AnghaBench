#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nf_conn {int dummy; } ;
struct hlist_head {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dwork; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CONNTRACK_LOCKS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HZ ; 
 scalar_t__ NFCT_INFOMASK ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int SLAB_HWCACHE_ALIGN ; 
 int SLAB_TYPESAFE_BY_RCU ; 
 TYPE_1__ conntrack_gc_work ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  nf_conntrack_cachep ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  nf_conntrack_generation ; 
 int /*<<< orphan*/  nf_conntrack_hash ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 () ; 
 int nf_conntrack_htable_size ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 () ; 
 int /*<<< orphan*/ * nf_conntrack_locks ; 
 int nf_conntrack_max ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 
 unsigned int FUNC26 () ; 
 unsigned long FUNC27 () ; 

int FUNC28(void)
{
	unsigned long nr_pages = FUNC27();
	int max_factor = 8;
	int ret = -ENOMEM;
	int i;

	/* struct nf_ct_ext uses u8 to store offsets/size */
	FUNC0(FUNC26() > 255u);

	FUNC24(&nf_conntrack_generation);

	for (i = 0; i < CONNTRACK_LOCKS; i++)
		FUNC25(&nf_conntrack_locks[i]);

	if (!nf_conntrack_htable_size) {
		/* Idea from tcp.c: use 1/16384 of memory.
		 * On i386: 32MB machine has 512 buckets.
		 * >= 1GB machines have 16384 buckets.
		 * >= 4GB machines have 65536 buckets.
		 */
		nf_conntrack_htable_size
			= (((nr_pages << PAGE_SHIFT) / 16384)
			   / sizeof(struct hlist_head));
		if (nr_pages > (4 * (1024 * 1024 * 1024 / PAGE_SIZE)))
			nf_conntrack_htable_size = 65536;
		else if (nr_pages > (1024 * 1024 * 1024 / PAGE_SIZE))
			nf_conntrack_htable_size = 16384;
		if (nf_conntrack_htable_size < 32)
			nf_conntrack_htable_size = 32;

		/* Use a max. factor of four by default to get the same max as
		 * with the old struct list_heads. When a table size is given
		 * we use the old value of 8 to avoid reducing the max.
		 * entries. */
		max_factor = 4;
	}

	nf_conntrack_hash = FUNC22(&nf_conntrack_htable_size, 1);
	if (!nf_conntrack_hash)
		return -ENOMEM;

	nf_conntrack_max = max_factor * nf_conntrack_htable_size;

	nf_conntrack_cachep = FUNC2("nf_conntrack",
						sizeof(struct nf_conn),
						NFCT_INFOMASK + 1,
						SLAB_TYPESAFE_BY_RCU | SLAB_HWCACHE_ALIGN, NULL);
	if (!nf_conntrack_cachep)
		goto err_cachep;

	ret = FUNC10();
	if (ret < 0)
		goto err_expect;

	ret = FUNC6();
	if (ret < 0)
		goto err_acct;

	ret = FUNC21();
	if (ret < 0)
		goto err_tstamp;

	ret = FUNC8();
	if (ret < 0)
		goto err_ecache;

	ret = FUNC19();
	if (ret < 0)
		goto err_timeout;

	ret = FUNC12();
	if (ret < 0)
		goto err_helper;

	ret = FUNC14();
	if (ret < 0)
		goto err_labels;

	ret = FUNC17();
	if (ret < 0)
		goto err_seqadj;

	ret = FUNC15();
	if (ret < 0)
		goto err_proto;

	FUNC1(&conntrack_gc_work);
	FUNC23(system_power_efficient_wq, &conntrack_gc_work.dwork, HZ);

	return 0;

err_proto:
	FUNC16();
err_seqadj:
	FUNC13();
err_labels:
	FUNC11();
err_helper:
	FUNC18();
err_timeout:
	FUNC7();
err_ecache:
	FUNC20();
err_tstamp:
	FUNC5();
err_acct:
	FUNC9();
err_expect:
	FUNC3(nf_conntrack_cachep);
err_cachep:
	FUNC4(nf_conntrack_hash);
	return ret;
}