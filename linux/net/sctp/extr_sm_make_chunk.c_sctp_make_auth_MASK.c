#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sctp_hmac {scalar_t__ hmac_len; scalar_t__ hmac_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  auth_hdr; } ;
struct sctp_chunk {int /*<<< orphan*/  skb; int /*<<< orphan*/  chunk_end; TYPE_2__* chunk_hdr; TYPE_1__ subh; } ;
struct sctp_authhdr {void* shkey_id; void* hmac_id; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  auth_hdr ;
typedef  scalar_t__ __u16 ;
struct TYPE_4__ {void* length; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SCTP_CID_AUTH ; 
 void* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_chunk*,int,struct sctp_authhdr*) ; 
 struct sctp_hmac* FUNC3 (struct sctp_association const*) ; 
 struct sctp_chunk* FUNC4 (struct sctp_association const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

struct sctp_chunk *FUNC8(const struct sctp_association *asoc,
				  __u16 key_id)
{
	struct sctp_authhdr auth_hdr;
	struct sctp_hmac *hmac_desc;
	struct sctp_chunk *retval;

	/* Get the first hmac that the peer told us to use */
	hmac_desc = FUNC3(asoc);
	if (FUNC7(!hmac_desc))
		return NULL;

	retval = FUNC4(asoc, SCTP_CID_AUTH, 0,
				   hmac_desc->hmac_len + sizeof(auth_hdr),
				   GFP_ATOMIC);
	if (!retval)
		return NULL;

	auth_hdr.hmac_id = FUNC0(hmac_desc->hmac_id);
	auth_hdr.shkey_id = FUNC0(key_id);

	retval->subh.auth_hdr = FUNC2(retval, sizeof(auth_hdr),
						 &auth_hdr);

	FUNC5(retval->skb, hmac_desc->hmac_len);

	/* Adjust the chunk header to include the empty MAC */
	retval->chunk_hdr->length =
		FUNC0(FUNC1(retval->chunk_hdr->length) + hmac_desc->hmac_len);
	retval->chunk_end = FUNC6(retval->skb);

	return retval;
}