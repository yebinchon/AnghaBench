#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int8_t ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct nfgenmsg {int /*<<< orphan*/  nfgen_family; } ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct TYPE_3__ {scalar_t__ protonum; } ;
struct nf_conntrack_tuple {TYPE_1__ dst; } ;
struct nf_conn {int /*<<< orphan*/  status; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
typedef  enum ip_conntrack_events { ____Placeholder_ip_conntrack_events } ip_conntrack_events ;
struct TYPE_4__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 size_t CTA_LABELS ; 
 size_t CTA_TUPLE_ORIG ; 
 size_t CTA_TUPLE_REPLY ; 
 size_t CTA_ZONE ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int IPCT_ASSURED ; 
 int IPCT_HELPER ; 
 int IPCT_LABEL ; 
 int IPCT_MARK ; 
 int IPCT_NEW ; 
 int IPCT_PROTOINFO ; 
 int IPCT_RELATED ; 
 int IPCT_REPLY ; 
 int IPCT_SEQADJ ; 
 int IPCT_SYNPROXY ; 
 int /*<<< orphan*/  IPS_EXPECTED_BIT ; 
 scalar_t__ FUNC0 (struct nf_conn*) ; 
 TYPE_2__ FUNC1 (struct sk_buff*) ; 
 int NLM_F_CREATE ; 
 int NLM_F_EXCL ; 
 int FUNC2 (struct nf_conn*) ; 
 scalar_t__ FUNC3 (struct nf_conn*,struct nlattr const* const*) ; 
 int FUNC4 (struct nf_conn*,struct nlattr const* const*) ; 
 struct nf_conn* FUNC5 (struct net*,struct nf_conntrack_zone*,struct nlattr const* const*,struct nf_conntrack_tuple*,struct nf_conntrack_tuple*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nlattr const* const*,struct nf_conntrack_tuple*,size_t,int /*<<< orphan*/ ,struct nf_conntrack_zone*) ; 
 int FUNC7 (struct nlattr const* const,struct nf_conntrack_zone*) ; 
 int /*<<< orphan*/  FUNC8 (int,struct nf_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nf_conntrack_tuple_hash* FUNC9 (struct net*,struct nf_conntrack_zone*,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC10 (struct nf_conn*) ; 
 struct nf_conn* FUNC11 (struct nf_conntrack_tuple_hash*) ; 
 struct nfgenmsg* FUNC12 (struct nlmsghdr const*) ; 
 int /*<<< orphan*/  FUNC13 (struct nlmsghdr const*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct net *net, struct sock *ctnl,
				   struct sk_buff *skb,
				   const struct nlmsghdr *nlh,
				   const struct nlattr * const cda[],
				   struct netlink_ext_ack *extack)
{
	struct nf_conntrack_tuple otuple, rtuple;
	struct nf_conntrack_tuple_hash *h = NULL;
	struct nfgenmsg *nfmsg = FUNC12(nlh);
	struct nf_conn *ct;
	u_int8_t u3 = nfmsg->nfgen_family;
	struct nf_conntrack_zone zone;
	int err;

	err = FUNC7(cda[CTA_ZONE], &zone);
	if (err < 0)
		return err;

	if (cda[CTA_TUPLE_ORIG]) {
		err = FUNC6(cda, &otuple, CTA_TUPLE_ORIG,
					    u3, &zone);
		if (err < 0)
			return err;
	}

	if (cda[CTA_TUPLE_REPLY]) {
		err = FUNC6(cda, &rtuple, CTA_TUPLE_REPLY,
					    u3, &zone);
		if (err < 0)
			return err;
	}

	if (cda[CTA_TUPLE_ORIG])
		h = FUNC9(net, &zone, &otuple);
	else if (cda[CTA_TUPLE_REPLY])
		h = FUNC9(net, &zone, &rtuple);

	if (h == NULL) {
		err = -ENOENT;
		if (nlh->nlmsg_flags & NLM_F_CREATE) {
			enum ip_conntrack_events events;

			if (!cda[CTA_TUPLE_ORIG] || !cda[CTA_TUPLE_REPLY])
				return -EINVAL;
			if (otuple.dst.protonum != rtuple.dst.protonum)
				return -EINVAL;

			ct = FUNC5(net, &zone, cda, &otuple,
							&rtuple, u3);
			if (FUNC0(ct))
				return FUNC2(ct);

			err = 0;
			if (FUNC14(IPS_EXPECTED_BIT, &ct->status))
				events = 1 << IPCT_RELATED;
			else
				events = 1 << IPCT_NEW;

			if (cda[CTA_LABELS] &&
			    FUNC3(ct, cda) == 0)
				events |= (1 << IPCT_LABEL);

			FUNC8((1 << IPCT_REPLY) |
						      (1 << IPCT_ASSURED) |
						      (1 << IPCT_HELPER) |
						      (1 << IPCT_PROTOINFO) |
						      (1 << IPCT_SEQADJ) |
						      (1 << IPCT_MARK) |
						      (1 << IPCT_SYNPROXY) |
						      events,
						      ct, FUNC1(skb).portid,
						      FUNC13(nlh));
			FUNC10(ct);
		}

		return err;
	}
	/* implicit 'else' */

	err = -EEXIST;
	ct = FUNC11(h);
	if (!(nlh->nlmsg_flags & NLM_F_EXCL)) {
		err = FUNC4(ct, cda);
		if (err == 0) {
			FUNC8((1 << IPCT_REPLY) |
						      (1 << IPCT_ASSURED) |
						      (1 << IPCT_HELPER) |
						      (1 << IPCT_LABEL) |
						      (1 << IPCT_PROTOINFO) |
						      (1 << IPCT_SEQADJ) |
						      (1 << IPCT_MARK) |
						      (1 << IPCT_SYNPROXY),
						      ct, FUNC1(skb).portid,
						      FUNC13(nlh));
		}
	}

	FUNC10(ct);
	return err;
}