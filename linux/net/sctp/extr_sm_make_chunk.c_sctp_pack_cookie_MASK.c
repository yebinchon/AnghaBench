#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_17__ {int raw_addr_list_len; TYPE_5__* peer_init; int /*<<< orphan*/  expiration; int /*<<< orphan*/  adaptation_ind; int /*<<< orphan*/  prsctp_capable; } ;
struct sctp_signed_cookie {int /*<<< orphan*/  signature; TYPE_4__ c; } ;
struct sctp_paramhdr {int dummy; } ;
struct TYPE_16__ {int /*<<< orphan*/  sk; } ;
struct sctp_endpoint {int /*<<< orphan*/  secret_key; TYPE_3__ base; } ;
struct TYPE_14__ {int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;
struct sctp_cookie_param {TYPE_1__ p; scalar_t__ body; } ;
struct sctp_cookie {int dummy; } ;
struct sctp_chunk {TYPE_5__ const* chunk_hdr; } ;
struct TYPE_15__ {int /*<<< orphan*/  adaptation_ind; int /*<<< orphan*/  prsctp_capable; } ;
struct sctp_association {int /*<<< orphan*/  cookie_life; TYPE_2__ peer; TYPE_4__ c; } ;
struct TYPE_18__ {int /*<<< orphan*/  length; } ;
typedef  TYPE_5__ __u8 ;
struct TYPE_20__ {scalar_t__ hmac; } ;
struct TYPE_19__ {scalar_t__ tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int SCTP_COOKIE_MULTIPLE ; 
 int /*<<< orphan*/  SCTP_PARAM_STATE_COOKIE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,scalar_t__) ; 
 int FUNC1 (TYPE_6__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 TYPE_6__* desc ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_cookie_param*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct sctp_cookie_param* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,TYPE_5__ const*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 

__attribute__((used)) static struct sctp_cookie_param *FUNC12(
					const struct sctp_endpoint *ep,
					const struct sctp_association *asoc,
					const struct sctp_chunk *init_chunk,
					int *cookie_len, const __u8 *raw_addrs,
					int addrs_len)
{
	struct sctp_signed_cookie *cookie;
	struct sctp_cookie_param *retval;
	int headersize, bodysize;

	/* Header size is static data prior to the actual cookie, including
	 * any padding.
	 */
	headersize = sizeof(struct sctp_paramhdr) +
		     (sizeof(struct sctp_signed_cookie) -
		      sizeof(struct sctp_cookie));
	bodysize = sizeof(struct sctp_cookie)
		+ FUNC9(init_chunk->chunk_hdr->length) + addrs_len;

	/* Pad out the cookie to a multiple to make the signature
	 * functions simpler to write.
	 */
	if (bodysize % SCTP_COOKIE_MULTIPLE)
		bodysize += SCTP_COOKIE_MULTIPLE
			- (bodysize % SCTP_COOKIE_MULTIPLE);
	*cookie_len = headersize + bodysize;

	/* Clear this memory since we are sending this data structure
	 * out on the network.
	 */
	retval = FUNC7(*cookie_len, GFP_ATOMIC);
	if (!retval)
		goto nodata;

	cookie = (struct sctp_signed_cookie *) retval->body;

	/* Set up the parameter header.  */
	retval->p.type = SCTP_PARAM_STATE_COOKIE;
	retval->p.length = FUNC3(*cookie_len);

	/* Copy the cookie part of the association itself.  */
	cookie->c = asoc->c;
	/* Save the raw address list length in the cookie. */
	cookie->c.raw_addr_list_len = addrs_len;

	/* Remember PR-SCTP capability. */
	cookie->c.prsctp_capable = asoc->peer.prsctp_capable;

	/* Save adaptation indication in the cookie. */
	cookie->c.adaptation_ind = asoc->peer.adaptation_ind;

	/* Set an expiration time for the cookie.  */
	cookie->c.expiration = FUNC5(asoc->cookie_life,
					 FUNC6());

	/* Copy the peer's init packet.  */
	FUNC8(&cookie->c.peer_init[0], init_chunk->chunk_hdr,
	       FUNC9(init_chunk->chunk_hdr->length));

	/* Copy the raw local address list of the association. */
	FUNC8((__u8 *)&cookie->c.peer_init[0] +
	       FUNC9(init_chunk->chunk_hdr->length), raw_addrs, addrs_len);

	if (FUNC10(ep->base.sk)->hmac) {
		FUNC0(desc, FUNC10(ep->base.sk)->hmac);
		int err;

		/* Sign the message.  */
		desc->tfm = FUNC10(ep->base.sk)->hmac;

		err = FUNC2(desc->tfm, ep->secret_key,
					  sizeof(ep->secret_key)) ?:
		      FUNC1(desc, (u8 *)&cookie->c, bodysize,
					  cookie->signature);
		FUNC11(desc);
		if (err)
			goto free_cookie;
	}

	return retval;

free_cookie:
	FUNC4(retval);
nodata:
	*cookie_len = 0;
	return NULL;
}