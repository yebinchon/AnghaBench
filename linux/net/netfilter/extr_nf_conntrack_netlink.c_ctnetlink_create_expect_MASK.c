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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u32 ;
struct nlattr {int dummy; } ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conntrack_helper {int dummy; } ;
struct nf_conntrack_expect {int dummy; } ;
struct nf_conn {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 size_t CTA_EXPECT_HELP_NAME ; 
 int /*<<< orphan*/  CTA_EXPECT_MASK ; 
 int /*<<< orphan*/  CTA_EXPECT_MASTER ; 
 int /*<<< orphan*/  CTA_EXPECT_TUPLE ; 
 int EAGAIN ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct nf_conntrack_expect*) ; 
 int FUNC1 (struct nf_conntrack_expect*) ; 
 struct nf_conntrack_helper* FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nf_conntrack_expect* FUNC3 (struct nlattr const* const*,struct nf_conn*,struct nf_conntrack_helper*,struct nf_conntrack_tuple*,struct nf_conntrack_tuple*) ; 
 int FUNC4 (struct nlattr const* const*,struct nf_conntrack_tuple*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nf_conntrack_tuple_hash* FUNC5 (struct net*,struct nf_conntrack_zone const*,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC6 (struct nf_conntrack_expect*) ; 
 int FUNC7 (struct nf_conntrack_expect*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC9 (struct nf_conn*) ; 
 struct nf_conn* FUNC10 (struct nf_conntrack_tuple_hash*) ; 
 char* FUNC11 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (char*,char const*) ; 

__attribute__((used)) static int
FUNC15(struct net *net,
			const struct nf_conntrack_zone *zone,
			const struct nlattr * const cda[],
			u_int8_t u3, u32 portid, int report)
{
	struct nf_conntrack_tuple tuple, mask, master_tuple;
	struct nf_conntrack_tuple_hash *h = NULL;
	struct nf_conntrack_helper *helper = NULL;
	struct nf_conntrack_expect *exp;
	struct nf_conn *ct;
	int err;

	/* caller guarantees that those three CTA_EXPECT_* exist */
	err = FUNC4(cda, &tuple, CTA_EXPECT_TUPLE,
				    u3, NULL);
	if (err < 0)
		return err;
	err = FUNC4(cda, &mask, CTA_EXPECT_MASK,
				    u3, NULL);
	if (err < 0)
		return err;
	err = FUNC4(cda, &master_tuple, CTA_EXPECT_MASTER,
				    u3, NULL);
	if (err < 0)
		return err;

	/* Look for master conntrack of this expectation */
	h = FUNC5(net, zone, &master_tuple);
	if (!h)
		return -ENOENT;
	ct = FUNC10(h);

	FUNC12();
	if (cda[CTA_EXPECT_HELP_NAME]) {
		const char *helpname = FUNC11(cda[CTA_EXPECT_HELP_NAME]);

		helper = FUNC2(helpname, u3,
						    FUNC8(ct));
		if (helper == NULL) {
			FUNC13();
#ifdef CONFIG_MODULES
			if (request_module("nfct-helper-%s", helpname) < 0) {
				err = -EOPNOTSUPP;
				goto err_ct;
			}
			rcu_read_lock();
			helper = __nf_conntrack_helper_find(helpname, u3,
							    nf_ct_protonum(ct));
			if (helper) {
				err = -EAGAIN;
				goto err_rcu;
			}
			rcu_read_unlock();
#endif
			err = -EOPNOTSUPP;
			goto err_ct;
		}
	}

	exp = FUNC3(cda, ct, helper, &tuple, &mask);
	if (FUNC0(exp)) {
		err = FUNC1(exp);
		goto err_rcu;
	}

	err = FUNC7(exp, portid, report, 0);
	FUNC6(exp);
err_rcu:
	FUNC13();
err_ct:
	FUNC9(ct);
	return err;
}