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
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct neigh_dump_filter {void* master_idx; void* dev_idx; } ;
struct ndmsg {int ndm_flags; scalar_t__ ndm_type; scalar_t__ ndm_state; scalar_t__ ndm_ifindex; scalar_t__ ndm_pad2; scalar_t__ ndm_pad1; } ;

/* Variables and functions */
 int EINVAL ; 
#define  NDA_IFINDEX 129 
#define  NDA_MASTER 128 
 int NDA_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int NTF_PROXY ; 
 int /*<<< orphan*/  nda_policy ; 
 void* FUNC1 (struct nlattr*) ; 
 struct ndmsg* FUNC2 (struct nlmsghdr const*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct nlmsghdr const*,int,struct nlattr**,int,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC5 (struct nlmsghdr const*,int,struct nlattr**,int,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC6(const struct nlmsghdr *nlh,
				bool strict_check,
				struct neigh_dump_filter *filter,
				struct netlink_ext_ack *extack)
{
	struct nlattr *tb[NDA_MAX + 1];
	int err, i;

	if (strict_check) {
		struct ndmsg *ndm;

		if (nlh->nlmsg_len < FUNC3(sizeof(*ndm))) {
			FUNC0(extack, "Invalid header for neighbor dump request");
			return -EINVAL;
		}

		ndm = FUNC2(nlh);
		if (ndm->ndm_pad1  || ndm->ndm_pad2  || ndm->ndm_ifindex ||
		    ndm->ndm_state || ndm->ndm_type) {
			FUNC0(extack, "Invalid values in header for neighbor dump request");
			return -EINVAL;
		}

		if (ndm->ndm_flags & ~NTF_PROXY) {
			FUNC0(extack, "Invalid flags in header for neighbor dump request");
			return -EINVAL;
		}

		err = FUNC5(nlh, sizeof(struct ndmsg),
						    tb, NDA_MAX, nda_policy,
						    extack);
	} else {
		err = FUNC4(nlh, sizeof(struct ndmsg), tb,
					     NDA_MAX, nda_policy, extack);
	}
	if (err < 0)
		return err;

	for (i = 0; i <= NDA_MAX; ++i) {
		if (!tb[i])
			continue;

		/* all new attributes should require strict_check */
		switch (i) {
		case NDA_IFINDEX:
			filter->dev_idx = FUNC1(tb[i]);
			break;
		case NDA_MASTER:
			filter->master_idx = FUNC1(tb[i]);
			break;
		default:
			if (strict_check) {
				FUNC0(extack, "Unsupported attribute in neighbor dump request");
				return -EINVAL;
			}
		}
	}

	return 0;
}