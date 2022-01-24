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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct tpm_buf {int /*<<< orphan*/ * data; } ;
struct osapsess {unsigned char* enonce; int /*<<< orphan*/  secret; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tpm_buf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  MAX_BUF_SIZE ; 
 int /*<<< orphan*/  SHA1_DIGEST_SIZE ; 
 int TPM_DATA_OFFSET ; 
 int TPM_NONCE_SIZE ; 
 int /*<<< orphan*/  TPM_ORD_OSAP ; 
 int /*<<< orphan*/  TPM_OSAP_SIZE ; 
 int /*<<< orphan*/  TPM_TAG_RQU_COMMAND ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ,int,unsigned char*,int,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chip ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tpm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tpm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tpm_buf*,unsigned char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct tpm_buf *tb, struct osapsess *s,
		const unsigned char *key, uint16_t type, uint32_t handle)
{
	unsigned char enonce[TPM_NONCE_SIZE];
	unsigned char ononce[TPM_NONCE_SIZE];
	int ret;

	ret = FUNC7(chip, ononce, TPM_NONCE_SIZE);
	if (ret != TPM_NONCE_SIZE)
		return ret;

	FUNC0(tb);
	FUNC4(tb, TPM_TAG_RQU_COMMAND);
	FUNC5(tb, TPM_OSAP_SIZE);
	FUNC5(tb, TPM_ORD_OSAP);
	FUNC4(tb, type);
	FUNC5(tb, handle);
	FUNC6(tb, ononce, TPM_NONCE_SIZE);

	ret = FUNC8(tb->data, MAX_BUF_SIZE);
	if (ret < 0)
		return ret;

	s->handle = FUNC1(tb->data, TPM_DATA_OFFSET);
	FUNC3(s->enonce, &(tb->data[TPM_DATA_OFFSET + sizeof(uint32_t)]),
	       TPM_NONCE_SIZE);
	FUNC3(enonce, &(tb->data[TPM_DATA_OFFSET + sizeof(uint32_t) +
				  TPM_NONCE_SIZE]), TPM_NONCE_SIZE);
	return FUNC2(s->secret, key, SHA1_DIGEST_SIZE, TPM_NONCE_SIZE,
			   enonce, TPM_NONCE_SIZE, ononce, 0, 0);
}