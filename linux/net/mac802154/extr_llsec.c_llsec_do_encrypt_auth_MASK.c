#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int mac_len; } ;
struct scatterlist {int dummy; } ;
struct mac802154_llsec_key {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  hwaddr; } ;
struct mac802154_llsec {TYPE_1__ params; } ;
struct TYPE_5__ {int level; } ;
struct ieee802154_hdr {TYPE_2__ sec; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IEEE802154_SCF_SECLEVEL_ENC ; 
 struct aead_request* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*,struct scatterlist*,struct scatterlist*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct aead_request*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct mac802154_llsec_key*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*,unsigned char*,int) ; 
 unsigned char* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 unsigned char* FUNC12 (struct sk_buff*) ; 

__attribute__((used)) static int
FUNC13(struct sk_buff *skb, const struct mac802154_llsec *sec,
		      const struct ieee802154_hdr *hdr,
		      struct mac802154_llsec_key *key)
{
	u8 iv[16];
	unsigned char *data;
	int authlen, assoclen, datalen, rc;
	struct scatterlist sg;
	struct aead_request *req;

	authlen = FUNC5(&hdr->sec);
	FUNC7(iv, sec->params.hwaddr, &hdr->sec);

	req = FUNC0(FUNC8(key, authlen), GFP_ATOMIC);
	if (!req)
		return -ENOMEM;

	assoclen = skb->mac_len;

	data = FUNC10(skb) + skb->mac_len;
	datalen = FUNC12(skb) - data;

	FUNC11(skb, authlen);

	FUNC9(&sg, FUNC10(skb), assoclen + datalen + authlen);

	if (!(hdr->sec.level & IEEE802154_SCF_SECLEVEL_ENC)) {
		assoclen += datalen;
		datalen = 0;
	}

	FUNC2(req, 0, NULL, NULL);
	FUNC3(req, &sg, &sg, datalen, iv);
	FUNC1(req, assoclen);

	rc = FUNC4(req);

	FUNC6(req);

	return rc;
}