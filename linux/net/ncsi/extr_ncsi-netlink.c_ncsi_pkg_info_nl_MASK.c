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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct ncsi_dev_priv {int dummy; } ;
struct genl_info {int /*<<< orphan*/ * attrs; int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t NCSI_ATTR_IFINDEX ; 
 size_t NCSI_ATTR_PACKAGE_ID ; 
 int /*<<< orphan*/  NCSI_ATTR_PACKAGE_LIST ; 
 int /*<<< orphan*/  NCSI_CMD_PKG_INFO ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct genl_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  ncsi_genl_family ; 
 int FUNC6 (struct sk_buff*,struct ncsi_dev_priv*,unsigned int) ; 
 struct ncsi_dev_priv* FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *msg, struct genl_info *info)
{
	struct ncsi_dev_priv *ndp;
	unsigned int package_id;
	struct sk_buff *skb;
	struct nlattr *attr;
	void *hdr;
	int rc;

	if (!info || !info->attrs)
		return -EINVAL;

	if (!info->attrs[NCSI_ATTR_IFINDEX])
		return -EINVAL;

	if (!info->attrs[NCSI_ATTR_PACKAGE_ID])
		return -EINVAL;

	ndp = FUNC7(FUNC0(info),
			       FUNC8(info->attrs[NCSI_ATTR_IFINDEX]));
	if (!ndp)
		return -ENODEV;

	skb = FUNC2(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!skb)
		return -ENOMEM;

	hdr = FUNC3(skb, info->snd_portid, info->snd_seq,
			  &ncsi_genl_family, 0, NCSI_CMD_PKG_INFO);
	if (!hdr) {
		FUNC5(skb);
		return -EMSGSIZE;
	}

	package_id = FUNC8(info->attrs[NCSI_ATTR_PACKAGE_ID]);

	attr = FUNC11(skb, NCSI_ATTR_PACKAGE_LIST);
	if (!attr) {
		FUNC5(skb);
		return -EMSGSIZE;
	}
	rc = FUNC6(skb, ndp, package_id);

	if (rc) {
		FUNC9(skb, attr);
		goto err;
	}

	FUNC10(skb, attr);

	FUNC1(skb, hdr);
	return FUNC4(skb, info);

err:
	FUNC5(skb);
	return rc;
}