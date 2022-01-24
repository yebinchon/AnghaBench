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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int mac_len; scalar_t__ len; } ;
struct scatterlist {int dummy; } ;
struct mac802154_llsec_key {int dummy; } ;
struct mac802154_llsec {int dummy; } ;
struct TYPE_3__ {int level; } ;
struct ieee802154_hdr {TYPE_1__ sec; } ;
struct aead_request {int dummy; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IEEE802154_SCF_SECLEVEL_ENC ; 
 struct aead_request* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*,struct scatterlist*,struct scatterlist*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct aead_request*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct mac802154_llsec_key*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*,unsigned char*,int) ; 
 unsigned char* FUNC10 (struct sk_buff*) ; 
 unsigned char* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int
FUNC13(struct sk_buff *skb, const struct mac802154_llsec *sec,
		      const struct ieee802154_hdr *hdr,
		      struct mac802154_llsec_key *key, __le64 dev_addr)
{
	u8 iv[16];
	unsigned char *data;
	int authlen, datalen, assoclen, rc;
	struct scatterlist sg;
	struct aead_request *req;

	authlen = FUNC5(&hdr->sec);
	FUNC7(iv, dev_addr, &hdr->sec);

	req = FUNC0(FUNC8(key, authlen), GFP_ATOMIC);
	if (!req)
		return -ENOMEM;

	assoclen = skb->mac_len;

	data = FUNC10(skb) + skb->mac_len;
	datalen = FUNC11(skb) - data;

	FUNC9(&sg, FUNC10(skb), assoclen + datalen);

	if (!(hdr->sec.level & IEEE802154_SCF_SECLEVEL_ENC)) {
		assoclen += datalen - authlen;
		datalen = authlen;
	}

	FUNC2(req, 0, NULL, NULL);
	FUNC3(req, &sg, &sg, datalen, iv);
	FUNC1(req, assoclen);

	rc = FUNC4(req);

	FUNC6(req);
	FUNC12(skb, skb->len - authlen);

	return rc;
}