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
struct nf_conntrack_expect {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int nf_conntrack_htable_size ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nf_ct_expect_cachep ; 
 int /*<<< orphan*/  nf_ct_expect_hash ; 
 int nf_ct_expect_hsize ; 
 int nf_ct_expect_max ; 

int FUNC3(void)
{
	if (!nf_ct_expect_hsize) {
		nf_ct_expect_hsize = nf_conntrack_htable_size / 256;
		if (!nf_ct_expect_hsize)
			nf_ct_expect_hsize = 1;
	}
	nf_ct_expect_max = nf_ct_expect_hsize * 4;
	nf_ct_expect_cachep = FUNC0("nf_conntrack_expect",
				sizeof(struct nf_conntrack_expect),
				0, 0, NULL);
	if (!nf_ct_expect_cachep)
		return -ENOMEM;

	nf_ct_expect_hash = FUNC2(&nf_ct_expect_hsize, 0);
	if (!nf_ct_expect_hash) {
		FUNC1(nf_ct_expect_cachep);
		return -ENOMEM;
	}

	return 0;
}