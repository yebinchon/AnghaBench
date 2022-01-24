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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct tpm_digests {unsigned char* xorwork; unsigned char const* xorhash; unsigned char const* nonceodd; unsigned char* encauth; unsigned char const* pubauth; } ;
struct tpm_buf {scalar_t__ data; } ;
struct osapsess {int handle; scalar_t__ secret; scalar_t__ enonce; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct tpm_buf*) ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  MAX_BUF_SIZE ; 
 int SHA1_DIGEST_SIZE ; 
 scalar_t__ TPM_DATA_OFFSET ; 
 int TPM_NONCE_SIZE ; 
 int TPM_ORD_SEAL ; 
 int TPM_SEAL_SIZE ; 
 int /*<<< orphan*/  TPM_TAG_RQU_AUTH1_COMMAND ; 
 int FUNC2 (unsigned char const*,scalar_t__,int,scalar_t__,unsigned char const*,unsigned char,int,int*,int,unsigned char*,int,int*,int,...) ; 
 int FUNC3 (scalar_t__,int,unsigned char const*,scalar_t__,int,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned char*,int,unsigned char const*) ; 
 int /*<<< orphan*/  chip ; 
 int /*<<< orphan*/  FUNC5 (struct osapsess*) ; 
 int FUNC6 (int) ; 
 struct tpm_digests* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tpm_digests*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,scalar_t__,int) ; 
 int FUNC10 (struct tpm_buf*,struct osapsess*,unsigned char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct tpm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct tpm_buf*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct tpm_buf*,unsigned char) ; 
 int /*<<< orphan*/  FUNC14 (struct tpm_buf*,unsigned char const*,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct tpm_buf *tb, uint16_t keytype,
		    uint32_t keyhandle, const unsigned char *keyauth,
		    const unsigned char *data, uint32_t datalen,
		    unsigned char *blob, uint32_t *bloblen,
		    const unsigned char *blobauth,
		    const unsigned char *pcrinfo, uint32_t pcrinfosize)
{
	struct osapsess sess;
	struct tpm_digests *td;
	unsigned char cont;
	uint32_t ordinal;
	uint32_t pcrsize;
	uint32_t datsize;
	int sealinfosize;
	int encdatasize;
	int storedsize;
	int ret;
	int i;

	/* alloc some work space for all the hashes */
	td = FUNC7(sizeof *td, GFP_KERNEL);
	if (!td)
		return -ENOMEM;

	/* get session for sealing key */
	ret = FUNC10(tb, &sess, keyauth, keytype, keyhandle);
	if (ret < 0)
		goto out;
	FUNC5(&sess);

	/* calculate encrypted authorization value */
	FUNC9(td->xorwork, sess.secret, SHA1_DIGEST_SIZE);
	FUNC9(td->xorwork + SHA1_DIGEST_SIZE, sess.enonce, SHA1_DIGEST_SIZE);
	ret = FUNC4(td->xorwork, SHA1_DIGEST_SIZE * 2, td->xorhash);
	if (ret < 0)
		goto out;

	ret = FUNC15(chip, td->nonceodd, TPM_NONCE_SIZE);
	if (ret != TPM_NONCE_SIZE)
		goto out;
	ordinal = FUNC6(TPM_ORD_SEAL);
	datsize = FUNC6(datalen);
	pcrsize = FUNC6(pcrinfosize);
	cont = 0;

	/* encrypt data authorization key */
	for (i = 0; i < SHA1_DIGEST_SIZE; ++i)
		td->encauth[i] = td->xorhash[i] ^ blobauth[i];

	/* calculate authorization HMAC value */
	if (pcrinfosize == 0) {
		/* no pcr info specified */
		ret = FUNC2(td->pubauth, sess.secret, SHA1_DIGEST_SIZE,
				   sess.enonce, td->nonceodd, cont,
				   sizeof(uint32_t), &ordinal, SHA1_DIGEST_SIZE,
				   td->encauth, sizeof(uint32_t), &pcrsize,
				   sizeof(uint32_t), &datsize, datalen, data, 0,
				   0);
	} else {
		/* pcr info specified */
		ret = FUNC2(td->pubauth, sess.secret, SHA1_DIGEST_SIZE,
				   sess.enonce, td->nonceodd, cont,
				   sizeof(uint32_t), &ordinal, SHA1_DIGEST_SIZE,
				   td->encauth, sizeof(uint32_t), &pcrsize,
				   pcrinfosize, pcrinfo, sizeof(uint32_t),
				   &datsize, datalen, data, 0, 0);
	}
	if (ret < 0)
		goto out;

	/* build and send the TPM request packet */
	FUNC0(tb);
	FUNC11(tb, TPM_TAG_RQU_AUTH1_COMMAND);
	FUNC12(tb, TPM_SEAL_SIZE + pcrinfosize + datalen);
	FUNC12(tb, TPM_ORD_SEAL);
	FUNC12(tb, keyhandle);
	FUNC14(tb, td->encauth, SHA1_DIGEST_SIZE);
	FUNC12(tb, pcrinfosize);
	FUNC14(tb, pcrinfo, pcrinfosize);
	FUNC12(tb, datalen);
	FUNC14(tb, data, datalen);
	FUNC12(tb, sess.handle);
	FUNC14(tb, td->nonceodd, TPM_NONCE_SIZE);
	FUNC13(tb, cont);
	FUNC14(tb, td->pubauth, SHA1_DIGEST_SIZE);

	ret = FUNC16(tb->data, MAX_BUF_SIZE);
	if (ret < 0)
		goto out;

	/* calculate the size of the returned Blob */
	sealinfosize = FUNC1(tb->data, TPM_DATA_OFFSET + sizeof(uint32_t));
	encdatasize = FUNC1(tb->data, TPM_DATA_OFFSET + sizeof(uint32_t) +
			     sizeof(uint32_t) + sealinfosize);
	storedsize = sizeof(uint32_t) + sizeof(uint32_t) + sealinfosize +
	    sizeof(uint32_t) + encdatasize;

	/* check the HMAC in the response */
	ret = FUNC3(tb->data, ordinal, td->nonceodd, sess.secret,
			     SHA1_DIGEST_SIZE, storedsize, TPM_DATA_OFFSET, 0,
			     0);

	/* copy the returned blob to caller */
	if (!ret) {
		FUNC9(blob, tb->data + TPM_DATA_OFFSET, storedsize);
		*bloblen = storedsize;
	}
out:
	FUNC8(td);
	return ret;
}