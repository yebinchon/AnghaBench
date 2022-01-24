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
typedef  scalar_t__ u32 ;
struct xdr_netobj {int len; int /*<<< orphan*/ * data; } ;
struct xdr_buf {scalar_t__ len; } ;
struct krb5_ctx {TYPE_1__* gk5e; int /*<<< orphan*/ * initiator_integ; struct crypto_sync_skcipher* initiator_enc_aux; struct crypto_sync_skcipher* initiator_enc; int /*<<< orphan*/ * acceptor_integ; struct crypto_sync_skcipher* acceptor_enc_aux; struct crypto_sync_skcipher* acceptor_enc; scalar_t__ initiate; } ;
struct decryptor_desc {int /*<<< orphan*/  iv; int /*<<< orphan*/  frags; int /*<<< orphan*/  req; scalar_t__ fraglen; scalar_t__ fragno; } ;
struct crypto_sync_skcipher {int dummy; } ;
typedef  int /*<<< orphan*/  our_hmac ;
struct TYPE_2__ {scalar_t__ cksumlength; scalar_t__ conflen; } ;

/* Variables and functions */
 int GSS_KRB5_MAX_CKSUM_LEN ; 
 scalar_t__ GSS_KRB5_TOK_HDR_LEN ; 
 scalar_t__ GSS_S_BAD_SIG ; 
 scalar_t__ GSS_S_FAILURE ; 
 unsigned int KG_USAGE_ACCEPTOR_SEAL ; 
 unsigned int KG_USAGE_INITIATOR_SEAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct crypto_sync_skcipher*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct crypto_sync_skcipher*) ; 
 int /*<<< orphan*/  decryptor ; 
 scalar_t__ FUNC3 (struct crypto_sync_skcipher*,struct xdr_buf*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct krb5_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct xdr_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,struct xdr_netobj*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct xdr_buf*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  req ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct crypto_sync_skcipher*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct xdr_buf*,struct xdr_buf*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (struct xdr_buf*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct decryptor_desc*) ; 

u32
FUNC13(struct krb5_ctx *kctx, u32 offset, struct xdr_buf *buf,
		     u32 *headskip, u32 *tailskip)
{
	struct xdr_buf subbuf;
	u32 ret = 0;
	u8 *cksum_key;
	struct crypto_sync_skcipher *cipher, *aux_cipher;
	struct xdr_netobj our_hmac_obj;
	u8 our_hmac[GSS_KRB5_MAX_CKSUM_LEN];
	u8 pkt_hmac[GSS_KRB5_MAX_CKSUM_LEN];
	int nblocks, blocksize, cbcbytes;
	struct decryptor_desc desc;
	unsigned int usage;

	if (kctx->initiate) {
		cipher = kctx->acceptor_enc;
		aux_cipher = kctx->acceptor_enc_aux;
		cksum_key = kctx->acceptor_integ;
		usage = KG_USAGE_ACCEPTOR_SEAL;
	} else {
		cipher = kctx->initiator_enc;
		aux_cipher = kctx->initiator_enc_aux;
		cksum_key = kctx->initiator_integ;
		usage = KG_USAGE_INITIATOR_SEAL;
	}
	blocksize = FUNC2(cipher);


	/* create a segment skipping the header and leaving out the checksum */
	FUNC11(buf, &subbuf, offset + GSS_KRB5_TOK_HDR_LEN,
				    (buf->len - offset - GSS_KRB5_TOK_HDR_LEN -
				     kctx->gk5e->cksumlength));

	nblocks = (subbuf.len + blocksize - 1) / blocksize;

	cbcbytes = 0;
	if (nblocks > 2)
		cbcbytes = (nblocks - 2) * blocksize;

	FUNC5(desc.iv, 0, sizeof(desc.iv));

	if (cbcbytes) {
		FUNC0(req, aux_cipher);

		desc.fragno = 0;
		desc.fraglen = 0;
		desc.req = req;

		FUNC9(req, aux_cipher);
		FUNC8(req, 0, NULL, NULL);

		FUNC7(desc.frags, 4);

		ret = FUNC12(&subbuf, 0, cbcbytes, decryptor, &desc);
		FUNC10(req);
		if (ret)
			goto out_err;
	}

	/* Make sure IV carries forward from any CBC results. */
	ret = FUNC3(cipher, &subbuf, cbcbytes, desc.iv, NULL, 0);
	if (ret)
		goto out_err;


	/* Calculate our hmac over the plaintext data */
	our_hmac_obj.len = sizeof(our_hmac);
	our_hmac_obj.data = our_hmac;

	ret = FUNC4(kctx, NULL, 0, &subbuf, 0,
			       cksum_key, usage, &our_hmac_obj);
	if (ret)
		goto out_err;

	/* Get the packet's hmac value */
	ret = FUNC6(buf, buf->len - kctx->gk5e->cksumlength,
				      pkt_hmac, kctx->gk5e->cksumlength);
	if (ret)
		goto out_err;

	if (FUNC1(pkt_hmac, our_hmac, kctx->gk5e->cksumlength) != 0) {
		ret = GSS_S_BAD_SIG;
		goto out_err;
	}
	*headskip = kctx->gk5e->conflen;
	*tailskip = kctx->gk5e->cksumlength;
out_err:
	if (ret && ret != GSS_S_BAD_SIG)
		ret = GSS_S_FAILURE;
	return ret;
}