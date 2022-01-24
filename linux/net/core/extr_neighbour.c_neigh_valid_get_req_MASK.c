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
typedef  int u8 ;
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct neigh_table {scalar_t__ key_len; } ;
struct ndmsg {int ndm_flags; int ndm_ifindex; int /*<<< orphan*/  ndm_family; scalar_t__ ndm_type; scalar_t__ ndm_state; scalar_t__ ndm_pad2; scalar_t__ ndm_pad1; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EINVAL ; 
#define  NDA_DST 128 
 int NDA_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int NTF_PROXY ; 
 int /*<<< orphan*/  nda_policy ; 
 struct neigh_table* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr*) ; 
 struct ndmsg* FUNC4 (struct nlmsghdr const*) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct nlmsghdr const*,int,struct nlattr**,int,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC7(const struct nlmsghdr *nlh,
			       struct neigh_table **tbl,
			       void **dst, int *dev_idx, u8 *ndm_flags,
			       struct netlink_ext_ack *extack)
{
	struct nlattr *tb[NDA_MAX + 1];
	struct ndmsg *ndm;
	int err, i;

	if (nlh->nlmsg_len < FUNC5(sizeof(*ndm))) {
		FUNC0(extack, "Invalid header for neighbor get request");
		return -EINVAL;
	}

	ndm = FUNC4(nlh);
	if (ndm->ndm_pad1  || ndm->ndm_pad2  || ndm->ndm_state ||
	    ndm->ndm_type) {
		FUNC0(extack, "Invalid values in header for neighbor get request");
		return -EINVAL;
	}

	if (ndm->ndm_flags & ~NTF_PROXY) {
		FUNC0(extack, "Invalid flags in header for neighbor get request");
		return -EINVAL;
	}

	err = FUNC6(nlh, sizeof(struct ndmsg), tb,
					    NDA_MAX, nda_policy, extack);
	if (err < 0)
		return err;

	*ndm_flags = ndm->ndm_flags;
	*dev_idx = ndm->ndm_ifindex;
	*tbl = FUNC1(ndm->ndm_family);
	if (*tbl == NULL) {
		FUNC0(extack, "Unsupported family in header for neighbor get request");
		return -EAFNOSUPPORT;
	}

	for (i = 0; i <= NDA_MAX; ++i) {
		if (!tb[i])
			continue;

		switch (i) {
		case NDA_DST:
			if (FUNC3(tb[i]) != (int)(*tbl)->key_len) {
				FUNC0(extack, "Invalid network address in neighbor get request");
				return -EINVAL;
			}
			*dst = FUNC2(tb[i]);
			break;
		default:
			FUNC0(extack, "Unsupported attribute in neighbor get request");
			return -EINVAL;
		}
	}

	return 0;
}