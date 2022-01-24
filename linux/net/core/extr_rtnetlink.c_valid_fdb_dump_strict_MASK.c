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
typedef  int /*<<< orphan*/  u32 ;
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct ndmsg {int ndm_ifindex; scalar_t__ ndm_type; scalar_t__ ndm_flags; scalar_t__ ndm_state; scalar_t__ ndm_pad2; scalar_t__ ndm_pad1; } ;

/* Variables and functions */
 int EINVAL ; 
#define  NDA_IFINDEX 129 
#define  NDA_MASTER 128 
 int NDA_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr*) ; 
 struct ndmsg* FUNC3 (struct nlmsghdr const*) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct nlmsghdr const*,int,struct nlattr**,int,int /*<<< orphan*/ *,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC6(const struct nlmsghdr *nlh,
				 int *br_idx, int *brport_idx,
				 struct netlink_ext_ack *extack)
{
	struct nlattr *tb[NDA_MAX + 1];
	struct ndmsg *ndm;
	int err, i;

	if (nlh->nlmsg_len < FUNC4(sizeof(*ndm))) {
		FUNC0(extack, "Invalid header for fdb dump request");
		return -EINVAL;
	}

	ndm = FUNC3(nlh);
	if (ndm->ndm_pad1  || ndm->ndm_pad2  || ndm->ndm_state ||
	    ndm->ndm_flags || ndm->ndm_type) {
		FUNC0(extack, "Invalid values in header for fdb dump request");
		return -EINVAL;
	}

	err = FUNC5(nlh, sizeof(struct ndmsg), tb,
					    NDA_MAX, NULL, extack);
	if (err < 0)
		return err;

	*brport_idx = ndm->ndm_ifindex;
	for (i = 0; i <= NDA_MAX; ++i) {
		if (!tb[i])
			continue;

		switch (i) {
		case NDA_IFINDEX:
			if (FUNC2(tb[i]) != sizeof(u32)) {
				FUNC0(extack, "Invalid IFINDEX attribute in fdb dump request");
				return -EINVAL;
			}
			*brport_idx = FUNC1(tb[NDA_IFINDEX]);
			break;
		case NDA_MASTER:
			if (FUNC2(tb[i]) != sizeof(u32)) {
				FUNC0(extack, "Invalid MASTER attribute in fdb dump request");
				return -EINVAL;
			}
			*br_idx = FUNC1(tb[NDA_MASTER]);
			break;
		default:
			FUNC0(extack, "Unsupported attribute in fdb dump request");
			return -EINVAL;
		}
	}

	return 0;
}