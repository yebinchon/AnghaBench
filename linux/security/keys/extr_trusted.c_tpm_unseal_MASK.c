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
typedef  scalar_t__ uint32_t ;
struct tpm_buf {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tpm_buf*) ; 
 unsigned int FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  MAX_BUF_SIZE ; 
 int SHA1_DIGEST_SIZE ; 
 scalar_t__ SRKHANDLE ; 
 scalar_t__ TPM_DATA_OFFSET ; 
 int TPM_NONCE_SIZE ; 
 scalar_t__ TPM_ORD_UNSEAL ; 
 int /*<<< orphan*/  TPM_TAG_RQU_AUTH2_COMMAND ; 
 scalar_t__ TPM_UNSEAL_SIZE ; 
 int FUNC2 (unsigned char*,unsigned char const*,int,unsigned char*,unsigned char*,unsigned char,int,scalar_t__*,int,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,scalar_t__,unsigned char*,unsigned char const*,int,unsigned char const*,int,int,scalar_t__,unsigned int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chip ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,scalar_t__,unsigned int) ; 
 int FUNC6 (struct tpm_buf*,scalar_t__*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tpm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tpm_buf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct tpm_buf*,unsigned char) ; 
 int /*<<< orphan*/  FUNC11 (struct tpm_buf*,unsigned char const*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct tpm_buf *tb,
		      uint32_t keyhandle, const unsigned char *keyauth,
		      const unsigned char *blob, int bloblen,
		      const unsigned char *blobauth,
		      unsigned char *data, unsigned int *datalen)
{
	unsigned char nonceodd[TPM_NONCE_SIZE];
	unsigned char enonce1[TPM_NONCE_SIZE];
	unsigned char enonce2[TPM_NONCE_SIZE];
	unsigned char authdata1[SHA1_DIGEST_SIZE];
	unsigned char authdata2[SHA1_DIGEST_SIZE];
	uint32_t authhandle1 = 0;
	uint32_t authhandle2 = 0;
	unsigned char cont = 0;
	uint32_t ordinal;
	uint32_t keyhndl;
	int ret;

	/* sessions for unsealing key and data */
	ret = FUNC6(tb, &authhandle1, enonce1);
	if (ret < 0) {
		FUNC7("trusted_key: oiap failed (%d)\n", ret);
		return ret;
	}
	ret = FUNC6(tb, &authhandle2, enonce2);
	if (ret < 0) {
		FUNC7("trusted_key: oiap failed (%d)\n", ret);
		return ret;
	}

	ordinal = FUNC4(TPM_ORD_UNSEAL);
	keyhndl = FUNC4(SRKHANDLE);
	ret = FUNC12(chip, nonceodd, TPM_NONCE_SIZE);
	if (ret != TPM_NONCE_SIZE) {
		FUNC7("trusted_key: tpm_get_random failed (%d)\n", ret);
		return ret;
	}
	ret = FUNC2(authdata1, keyauth, TPM_NONCE_SIZE,
			   enonce1, nonceodd, cont, sizeof(uint32_t),
			   &ordinal, bloblen, blob, 0, 0);
	if (ret < 0)
		return ret;
	ret = FUNC2(authdata2, blobauth, TPM_NONCE_SIZE,
			   enonce2, nonceodd, cont, sizeof(uint32_t),
			   &ordinal, bloblen, blob, 0, 0);
	if (ret < 0)
		return ret;

	/* build and send TPM request packet */
	FUNC0(tb);
	FUNC8(tb, TPM_TAG_RQU_AUTH2_COMMAND);
	FUNC9(tb, TPM_UNSEAL_SIZE + bloblen);
	FUNC9(tb, TPM_ORD_UNSEAL);
	FUNC9(tb, keyhandle);
	FUNC11(tb, blob, bloblen);
	FUNC9(tb, authhandle1);
	FUNC11(tb, nonceodd, TPM_NONCE_SIZE);
	FUNC10(tb, cont);
	FUNC11(tb, authdata1, SHA1_DIGEST_SIZE);
	FUNC9(tb, authhandle2);
	FUNC11(tb, nonceodd, TPM_NONCE_SIZE);
	FUNC10(tb, cont);
	FUNC11(tb, authdata2, SHA1_DIGEST_SIZE);

	ret = FUNC13(tb->data, MAX_BUF_SIZE);
	if (ret < 0) {
		FUNC7("trusted_key: authhmac failed (%d)\n", ret);
		return ret;
	}

	*datalen = FUNC1(tb->data, TPM_DATA_OFFSET);
	ret = FUNC3(tb->data, ordinal, nonceodd,
			     keyauth, SHA1_DIGEST_SIZE,
			     blobauth, SHA1_DIGEST_SIZE,
			     sizeof(uint32_t), TPM_DATA_OFFSET,
			     *datalen, TPM_DATA_OFFSET + sizeof(uint32_t), 0,
			     0);
	if (ret < 0) {
		FUNC7("trusted_key: TSS_checkhmac2 failed (%d)\n", ret);
		return ret;
	}
	FUNC5(data, tb->data + TPM_DATA_OFFSET + sizeof(uint32_t), *datalen);
	return 0;
}