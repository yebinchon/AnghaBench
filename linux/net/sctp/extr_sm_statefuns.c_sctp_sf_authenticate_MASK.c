#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sctp_shared_key {int dummy; } ;
struct sctp_hmac {unsigned int hmac_len; } ;
struct TYPE_5__ {struct sctp_authhdr* auth_hdr; } ;
struct sctp_chunk {int auth; TYPE_2__* chunk_hdr; TYPE_3__* skb; TYPE_1__ subh; } ;
struct sctp_authhdr {int /*<<< orphan*/ * hmac; int /*<<< orphan*/  hmac_id; int /*<<< orphan*/  shkey_id; } ;
struct sctp_auth_chunk {int dummy; } ;
struct sctp_association {scalar_t__ active_key_id; } ;
typedef  enum sctp_ierror { ____Placeholder_sctp_ierror } sctp_ierror ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  scalar_t__ __u16 ;
struct TYPE_7__ {scalar_t__ data; } ;
struct TYPE_6__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int SCTP_IERROR_AUTH_BAD_HMAC ; 
 int SCTP_IERROR_AUTH_BAD_KEYID ; 
 int SCTP_IERROR_BAD_SIG ; 
 int SCTP_IERROR_NOMEM ; 
 int SCTP_IERROR_NO_ERROR ; 
 int SCTP_IERROR_PROTO_VIOLATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_association const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_association const*,TYPE_3__*,struct sctp_auth_chunk*,struct sctp_shared_key*,int /*<<< orphan*/ ) ; 
 struct sctp_hmac* FUNC7 (scalar_t__) ; 
 struct sctp_shared_key* FUNC8 (struct sctp_association const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,unsigned int) ; 

__attribute__((used)) static enum sctp_ierror FUNC10(
					const struct sctp_association *asoc,
					struct sctp_chunk *chunk)
{
	struct sctp_shared_key *sh_key = NULL;
	struct sctp_authhdr *auth_hdr;
	__u8 *save_digest, *digest;
	struct sctp_hmac *hmac;
	unsigned int sig_len;
	__u16 key_id;

	/* Pull in the auth header, so we can do some more verification */
	auth_hdr = (struct sctp_authhdr *)chunk->skb->data;
	chunk->subh.auth_hdr = auth_hdr;
	FUNC9(chunk->skb, sizeof(*auth_hdr));

	/* Make sure that we support the HMAC algorithm from the auth
	 * chunk.
	 */
	if (!FUNC5(asoc, auth_hdr->hmac_id))
		return SCTP_IERROR_AUTH_BAD_HMAC;

	/* Make sure that the provided shared key identifier has been
	 * configured
	 */
	key_id = FUNC4(auth_hdr->shkey_id);
	if (key_id != asoc->active_key_id) {
		sh_key = FUNC8(asoc, key_id);
		if (!sh_key)
			return SCTP_IERROR_AUTH_BAD_KEYID;
	}

	/* Make sure that the length of the signature matches what
	 * we expect.
	 */
	sig_len = FUNC4(chunk->chunk_hdr->length) -
		  sizeof(struct sctp_auth_chunk);
	hmac = FUNC7(FUNC4(auth_hdr->hmac_id));
	if (sig_len != hmac->hmac_len)
		return SCTP_IERROR_PROTO_VIOLATION;

	/* Now that we've done validation checks, we can compute and
	 * verify the hmac.  The steps involved are:
	 *  1. Save the digest from the chunk.
	 *  2. Zero out the digest in the chunk.
	 *  3. Compute the new digest
	 *  4. Compare saved and new digests.
	 */
	digest = auth_hdr->hmac;
	FUNC9(chunk->skb, sig_len);

	save_digest = FUNC1(digest, sig_len, GFP_ATOMIC);
	if (!save_digest)
		goto nomem;

	FUNC3(digest, 0, sig_len);

	FUNC6(asoc, chunk->skb,
				 (struct sctp_auth_chunk *)chunk->chunk_hdr,
				 sh_key, GFP_ATOMIC);

	/* Discard the packet if the digests do not match */
	if (FUNC2(save_digest, digest, sig_len)) {
		FUNC0(save_digest);
		return SCTP_IERROR_BAD_SIG;
	}

	FUNC0(save_digest);
	chunk->auth = 1;

	return SCTP_IERROR_NO_ERROR;
nomem:
	return SCTP_IERROR_NOMEM;
}