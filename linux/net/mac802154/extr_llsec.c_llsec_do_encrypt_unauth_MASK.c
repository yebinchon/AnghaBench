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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int mac_len; } ;
struct scatterlist {int dummy; } ;
struct mac802154_llsec_key {int /*<<< orphan*/  tfm0; } ;
struct TYPE_2__ {int /*<<< orphan*/  hwaddr; } ;
struct mac802154_llsec {TYPE_1__ params; } ;
struct ieee802154_hdr {int /*<<< orphan*/  sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  req ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,unsigned char*,int) ; 
 unsigned char* FUNC4 (struct sk_buff*) ; 
 unsigned char* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct scatterlist*,struct scatterlist*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct sk_buff *skb, const struct mac802154_llsec *sec,
			const struct ieee802154_hdr *hdr,
			struct mac802154_llsec_key *key)
{
	u8 iv[16];
	struct scatterlist src;
	FUNC0(req, key->tfm0);
	int err, datalen;
	unsigned char *data;

	FUNC2(iv, sec->params.hwaddr, &hdr->sec);
	/* Compute data payload offset and data length */
	data = FUNC4(skb) + skb->mac_len;
	datalen = FUNC5(skb) - data;
	FUNC3(&src, data, datalen);

	FUNC8(req, key->tfm0);
	FUNC6(req, 0, NULL, NULL);
	FUNC7(req, &src, &src, datalen, iv);
	err = FUNC1(req);
	FUNC9(req);
	return err;
}