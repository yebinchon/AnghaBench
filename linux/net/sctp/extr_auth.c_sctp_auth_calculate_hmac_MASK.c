#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct sctp_shared_key {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/ * hmac; int /*<<< orphan*/  hmac_id; int /*<<< orphan*/  shkey_id; } ;
struct sctp_auth_chunk {TYPE_2__ auth_hdr; } ;
struct sctp_auth_bytes {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; } ;
struct sctp_association {scalar_t__ active_key_id; TYPE_1__* ep; struct sctp_auth_bytes* asoc_shared_key; } ;
struct crypto_shash {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  scalar_t__ __u16 ;
struct TYPE_9__ {struct crypto_shash* tfm; } ;
struct TYPE_7__ {struct crypto_shash** auth_hmacs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct crypto_shash*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* desc ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct sctp_auth_bytes* FUNC4 (struct sctp_association const*,struct sctp_shared_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_auth_bytes*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 unsigned char* FUNC7 (struct sk_buff*) ; 

void FUNC8(const struct sctp_association *asoc,
			      struct sk_buff *skb, struct sctp_auth_chunk *auth,
			      struct sctp_shared_key *ep_key, gfp_t gfp)
{
	struct sctp_auth_bytes *asoc_key;
	struct crypto_shash *tfm;
	__u16 key_id, hmac_id;
	unsigned char *end;
	int free_key = 0;
	__u8 *digest;

	/* Extract the info we need:
	 * - hmac id
	 * - key id
	 */
	key_id = FUNC3(auth->auth_hdr.shkey_id);
	hmac_id = FUNC3(auth->auth_hdr.hmac_id);

	if (key_id == asoc->active_key_id)
		asoc_key = asoc->asoc_shared_key;
	else {
		/* ep_key can't be NULL here */
		asoc_key = FUNC4(asoc, ep_key, gfp);
		if (!asoc_key)
			return;

		free_key = 1;
	}

	/* set up scatter list */
	end = FUNC7(skb);

	tfm = asoc->ep->auth_hmacs[hmac_id];

	digest = auth->auth_hdr.hmac;
	if (FUNC2(tfm, &asoc_key->data[0], asoc_key->len))
		goto free;

	{
		FUNC0(desc, tfm);

		desc->tfm = tfm;
		FUNC1(desc, (u8 *)auth,
				    end - (unsigned char *)auth, digest);
		FUNC6(desc);
	}

free:
	if (free_key)
		FUNC5(asoc_key);
}