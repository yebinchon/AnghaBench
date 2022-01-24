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
struct sk_buff {int dummy; } ;
struct nfc_dev {int dummy; } ;
struct netlink_callback {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  NFC_CMD_GET_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_callback*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfc_genl_family ; 
 scalar_t__ FUNC4 (struct nfc_dev*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *msg, struct nfc_dev *dev,
				u32 portid, u32 seq,
				struct netlink_callback *cb,
				int flags)
{
	void *hdr;

	hdr = FUNC3(msg, portid, seq, &nfc_genl_family, flags,
			  NFC_CMD_GET_DEVICE);
	if (!hdr)
		return -EMSGSIZE;

	if (cb)
		FUNC0(cb, hdr);

	if (FUNC4(dev, msg))
		goto nla_put_failure;

	FUNC2(msg, hdr);
	return 0;

nla_put_failure:
	FUNC1(msg, hdr);
	return -EMSGSIZE;
}