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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct nlattr {int dummy; } ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conntrack_helper {int /*<<< orphan*/  (* from_nlattr ) (struct nlattr*,struct nf_conn*) ;} ;
struct nf_conn_tstamp {int /*<<< orphan*/  start; } ;
struct nf_conn_help {int /*<<< orphan*/  helper; } ;
struct nf_conn {struct nf_conn* master; int /*<<< orphan*/  status; int /*<<< orphan*/  proto; scalar_t__ timeout; } ;
struct net {int dummy; } ;

/* Variables and functions */
 size_t CTA_HELP ; 
 size_t CTA_MARK ; 
 size_t CTA_PROTOINFO ; 
 size_t CTA_SEQ_ADJ_ORIG ; 
 size_t CTA_SEQ_ADJ_REPLY ; 
 size_t CTA_STATUS ; 
 size_t CTA_SYNPROXY ; 
 size_t CTA_TIMEOUT ; 
 size_t CTA_TUPLE_MASTER ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 struct nf_conn* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HZ ; 
 int INT_MAX ; 
 int /*<<< orphan*/  IPS_CONFIRMED ; 
 int /*<<< orphan*/  IPS_EXPECTED_BIT ; 
 scalar_t__ FUNC1 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nf_conntrack_helper*) ; 
 struct nf_conntrack_helper* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nf_conn*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nf_conn*,struct nlattr const* const*) ; 
 int FUNC7 (struct nf_conn*,struct nlattr const* const*) ; 
 int FUNC8 (struct nf_conn*,struct nlattr const* const*) ; 
 int FUNC9 (struct nf_conn*,struct nlattr const* const*) ; 
 int FUNC10 (struct nf_conn*,struct nlattr const* const*) ; 
 int FUNC11 (struct nlattr const* const,char**,struct nlattr**) ; 
 int FUNC12 (struct nlattr const* const*,struct nf_conntrack_tuple*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct nf_conn*,struct nlattr const* const*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct nf_conn_tstamp* FUNC16 (struct nf_conn*) ; 
 struct nf_conn* FUNC17 (struct net*,struct nf_conntrack_zone const*,struct nf_conntrack_tuple*,struct nf_conntrack_tuple*,int /*<<< orphan*/ ) ; 
 struct nf_conntrack_tuple_hash* FUNC18 (struct net*,struct nf_conntrack_zone const*,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC19 (struct nf_conn*) ; 
 int FUNC20 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC21 (struct nf_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct nf_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nf_conn_help* FUNC23 (struct nf_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC25 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC26 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC27 (struct nf_conn*,int /*<<< orphan*/ ) ; 
 struct nf_conn* FUNC28 (struct nf_conntrack_tuple_hash*) ; 
 int /*<<< orphan*/  FUNC29 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC30 (struct nf_conn*) ; 
 scalar_t__ nfct_time_stamp ; 
 int /*<<< orphan*/  FUNC31 (struct nlattr const* const) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 () ; 
 scalar_t__ FUNC35 (char*,char*) ; 
 int /*<<< orphan*/  FUNC36 (struct nlattr*,struct nf_conn*) ; 

__attribute__((used)) static struct nf_conn *
FUNC37(struct net *net,
			   const struct nf_conntrack_zone *zone,
			   const struct nlattr * const cda[],
			   struct nf_conntrack_tuple *otuple,
			   struct nf_conntrack_tuple *rtuple,
			   u8 u3)
{
	struct nf_conn *ct;
	int err = -EINVAL;
	struct nf_conntrack_helper *helper;
	struct nf_conn_tstamp *tstamp;
	u64 timeout;

	ct = FUNC17(net, zone, otuple, rtuple, GFP_ATOMIC);
	if (FUNC1(ct))
		return FUNC0(-ENOMEM);

	if (!cda[CTA_TIMEOUT])
		goto err1;

	timeout = (u64)FUNC32(FUNC31(cda[CTA_TIMEOUT])) * HZ;
	if (timeout > INT_MAX)
		timeout = INT_MAX;
	ct->timeout = (u32)timeout + nfct_time_stamp;

	FUNC33();
 	if (cda[CTA_HELP]) {
		char *helpname = NULL;
		struct nlattr *helpinfo = NULL;

		err = FUNC11(cda[CTA_HELP], &helpname, &helpinfo);
 		if (err < 0)
			goto err2;

		helper = FUNC3(helpname, FUNC24(ct),
						    FUNC26(ct));
		if (helper == NULL) {
			FUNC34();
#ifdef CONFIG_MODULES
			if (request_module("nfct-helper-%s", helpname) < 0) {
				err = -EOPNOTSUPP;
				goto err1;
			}

			rcu_read_lock();
			helper = __nf_conntrack_helper_find(helpname,
							    nf_ct_l3num(ct),
							    nf_ct_protonum(ct));
			if (helper) {
				err = -EAGAIN;
				goto err2;
			}
			rcu_read_unlock();
#endif
			err = -EOPNOTSUPP;
			goto err1;
		} else {
			struct nf_conn_help *help;

			help = FUNC23(ct, GFP_ATOMIC);
			if (help == NULL) {
				err = -ENOMEM;
				goto err2;
			}
			/* set private helper data if allowed. */
			if (helper->from_nlattr)
				helper->from_nlattr(helpinfo, ct);

			/* not in hash table yet so not strictly necessary */
			FUNC2(help->helper, helper);
		}
	} else {
		/* try an implicit helper assignation */
		err = FUNC4(ct, NULL, GFP_ATOMIC);
		if (err < 0)
			goto err2;
	}

	err = FUNC13(ct, cda);
	if (err < 0)
		goto err2;

	FUNC21(ct, GFP_ATOMIC);
	FUNC27(ct, GFP_ATOMIC);
	FUNC22(ct, 0, 0, GFP_ATOMIC);
	FUNC25(ct);
	FUNC29(ct);
	FUNC30(ct);

	/* we must add conntrack extensions before confirmation. */
	ct->status |= IPS_CONFIRMED;

	if (cda[CTA_STATUS]) {
		err = FUNC9(ct, cda);
		if (err < 0)
			goto err2;
	}

	if (cda[CTA_SEQ_ADJ_ORIG] || cda[CTA_SEQ_ADJ_REPLY]) {
		err = FUNC8(ct, cda);
		if (err < 0)
			goto err2;
	}

	FUNC15(&ct->proto, 0, sizeof(ct->proto));
	if (cda[CTA_PROTOINFO]) {
		err = FUNC7(ct, cda);
		if (err < 0)
			goto err2;
	}

	if (cda[CTA_SYNPROXY]) {
		err = FUNC10(ct, cda);
		if (err < 0)
			goto err2;
	}

#if defined(CONFIG_NF_CONNTRACK_MARK)
	if (cda[CTA_MARK])
		ctnetlink_change_mark(ct, cda);
#endif

	/* setup master conntrack: this is a confirmed expectation */
	if (cda[CTA_TUPLE_MASTER]) {
		struct nf_conntrack_tuple master;
		struct nf_conntrack_tuple_hash *master_h;
		struct nf_conn *master_ct;

		err = FUNC12(cda, &master, CTA_TUPLE_MASTER,
					    u3, NULL);
		if (err < 0)
			goto err2;

		master_h = FUNC18(net, zone, &master);
		if (master_h == NULL) {
			err = -ENOENT;
			goto err2;
		}
		master_ct = FUNC28(master_h);
		FUNC5(IPS_EXPECTED_BIT, &ct->status);
		ct->master = master_ct;
	}
	tstamp = FUNC16(ct);
	if (tstamp)
		tstamp->start = FUNC14();

	err = FUNC20(ct);
	if (err < 0)
		goto err2;

	FUNC34();

	return ct;

err2:
	FUNC34();
err1:
	FUNC19(ct);
	return FUNC0(err);
}