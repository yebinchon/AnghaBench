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
typedef  scalar_t__ u32 ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct ncsi_pkt_hdr {int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct ncsi_dev_priv {TYPE_1__ ndev; } ;
struct ncsi_cmd_arg {unsigned char package; unsigned char channel; unsigned char* data; int /*<<< orphan*/  payload; struct genl_info* info; int /*<<< orphan*/  req_flags; int /*<<< orphan*/  type; struct ncsi_dev_priv* ndp; } ;
struct genl_info {int /*<<< orphan*/  nlhdr; int /*<<< orphan*/  snd_portid; int /*<<< orphan*/  snd_seq; int /*<<< orphan*/ * attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ERANGE ; 
 size_t NCSI_ATTR_CHANNEL_ID ; 
 size_t NCSI_ATTR_DATA ; 
 size_t NCSI_ATTR_IFINDEX ; 
 size_t NCSI_ATTR_PACKAGE_ID ; 
 scalar_t__ NCSI_MAX_CHANNEL ; 
 scalar_t__ NCSI_MAX_PACKAGE ; 
 int /*<<< orphan*/  NCSI_REQ_FLAG_NETLINK_DRIVEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ncsi_cmd_arg*) ; 
 struct ncsi_dev_priv* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *msg, struct genl_info *info)
{
	struct ncsi_dev_priv *ndp;
	struct ncsi_pkt_hdr *hdr;
	struct ncsi_cmd_arg nca;
	unsigned char *data;
	u32 package_id;
	u32 channel_id;
	int len, ret;

	if (!info || !info->attrs) {
		ret = -EINVAL;
		goto out;
	}

	if (!info->attrs[NCSI_ATTR_IFINDEX]) {
		ret = -EINVAL;
		goto out;
	}

	if (!info->attrs[NCSI_ATTR_PACKAGE_ID]) {
		ret = -EINVAL;
		goto out;
	}

	if (!info->attrs[NCSI_ATTR_CHANNEL_ID]) {
		ret = -EINVAL;
		goto out;
	}

	if (!info->attrs[NCSI_ATTR_DATA]) {
		ret = -EINVAL;
		goto out;
	}

	ndp = FUNC3(FUNC0(FUNC10(msg->sk)),
			       FUNC7(info->attrs[NCSI_ATTR_IFINDEX]));
	if (!ndp) {
		ret = -ENODEV;
		goto out;
	}

	package_id = FUNC7(info->attrs[NCSI_ATTR_PACKAGE_ID]);
	channel_id = FUNC7(info->attrs[NCSI_ATTR_CHANNEL_ID]);

	if (package_id >= NCSI_MAX_PACKAGE || channel_id >= NCSI_MAX_CHANNEL) {
		ret = -ERANGE;
		goto out_netlink;
	}

	len = FUNC8(info->attrs[NCSI_ATTR_DATA]);
	if (len < sizeof(struct ncsi_pkt_hdr)) {
		FUNC5(ndp->ndev.dev, "NCSI: no command to send %u\n",
			    package_id);
		ret = -EINVAL;
		goto out_netlink;
	} else {
		data = (unsigned char *)FUNC6(info->attrs[NCSI_ATTR_DATA]);
	}

	hdr = (struct ncsi_pkt_hdr *)data;

	nca.ndp = ndp;
	nca.package = (unsigned char)package_id;
	nca.channel = (unsigned char)channel_id;
	nca.type = hdr->type;
	nca.req_flags = NCSI_REQ_FLAG_NETLINK_DRIVEN;
	nca.info = info;
	nca.payload = FUNC9(hdr->length);
	nca.data = data + sizeof(*hdr);

	ret = FUNC2(&nca);
out_netlink:
	if (ret != 0) {
		FUNC4(ndp->ndev.dev,
			   "NCSI: Error %d sending command\n",
			   ret);
		FUNC1(ndp->ndev.dev,
				      info->snd_seq,
				      info->snd_portid,
				      info->nlhdr,
				      ret);
	}
out:
	return ret;
}