#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct nlattr {int dummy; } ;
struct nfc_dev {int dummy; } ;
struct netlink_callback {int /*<<< orphan*/  nlh; } ;
struct TYPE_3__ {int /*<<< orphan*/  maxattr; scalar_t__ hdrsize; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 struct nfc_dev* FUNC0 (int) ; 
 scalar_t__ GENL_HDRLEN ; 
 size_t NFC_ATTR_DEVICE_INDEX ; 
 struct nlattr** FUNC1 (TYPE_1__*) ; 
 TYPE_1__ nfc_genl_family ; 
 int /*<<< orphan*/  nfc_genl_policy ; 
 struct nfc_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfc_dev *FUNC5(struct netlink_callback *cb)
{
	struct nlattr **attrbuf = FUNC1(&nfc_genl_family);
	struct nfc_dev *dev;
	int rc;
	u32 idx;

	rc = FUNC4(cb->nlh,
				    GENL_HDRLEN + nfc_genl_family.hdrsize,
				    attrbuf, nfc_genl_family.maxattr,
				    nfc_genl_policy, NULL);
	if (rc < 0)
		return FUNC0(rc);

	if (!attrbuf[NFC_ATTR_DEVICE_INDEX])
		return FUNC0(-EINVAL);

	idx = FUNC3(attrbuf[NFC_ATTR_DEVICE_INDEX]);

	dev = FUNC2(idx);
	if (!dev)
		return FUNC0(-ENODEV);

	return dev;
}