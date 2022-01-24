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
typedef  int /*<<< orphan*/  u8 ;
struct key {int /*<<< orphan*/  sem; } ;
struct encrypted_key_payload {int datablob_len; int /*<<< orphan*/ * format; int /*<<< orphan*/ * encrypted_data; int /*<<< orphan*/ * iv; int /*<<< orphan*/  decrypted_datalen; } ;
typedef  int /*<<< orphan*/  derived_key ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ENC_KEY ; 
 int HASH_SIZE ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int FUNC1 (struct key*) ; 
 int /*<<< orphan*/  blksize ; 
 int FUNC2 (struct encrypted_key_payload*,char const*,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC3 (struct encrypted_key_payload*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,int) ; 
 int ivsize ; 
 int /*<<< orphan*/  FUNC6 (struct key*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 struct key* FUNC9 (struct encrypted_key_payload*,int /*<<< orphan*/  const**,size_t*) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct encrypted_key_payload *epayload,
				 const char *format, const char *hex_encoded_iv)
{
	struct key *mkey;
	u8 derived_key[HASH_SIZE];
	const u8 *master_key;
	u8 *hmac;
	const char *hex_encoded_data;
	unsigned int encrypted_datalen;
	size_t master_keylen;
	size_t asciilen;
	int ret;

	encrypted_datalen = FUNC10(epayload->decrypted_datalen, blksize);
	asciilen = (ivsize + 1 + encrypted_datalen + HASH_SIZE) * 2;
	if (FUNC11(hex_encoded_iv) != asciilen)
		return -EINVAL;

	hex_encoded_data = hex_encoded_iv + (2 * ivsize) + 2;
	ret = FUNC5(epayload->iv, hex_encoded_iv, ivsize);
	if (ret < 0)
		return -EINVAL;
	ret = FUNC5(epayload->encrypted_data, hex_encoded_data,
		      encrypted_datalen);
	if (ret < 0)
		return -EINVAL;

	hmac = epayload->format + epayload->datablob_len;
	ret = FUNC5(hmac, hex_encoded_data + (encrypted_datalen * 2),
		      HASH_SIZE);
	if (ret < 0)
		return -EINVAL;

	mkey = FUNC9(epayload, &master_key, &master_keylen);
	if (FUNC0(mkey))
		return FUNC1(mkey);

	ret = FUNC2(epayload, format, master_key, master_keylen);
	if (ret < 0) {
		FUNC8("encrypted_key: bad hmac (%d)\n", ret);
		goto out;
	}

	ret = FUNC4(derived_key, ENC_KEY, master_key, master_keylen);
	if (ret < 0)
		goto out;

	ret = FUNC3(epayload, derived_key, sizeof derived_key);
	if (ret < 0)
		FUNC8("encrypted_key: failed to decrypt key (%d)\n", ret);
out:
	FUNC12(&mkey->sem);
	FUNC6(mkey);
	FUNC7(derived_key, sizeof(derived_key));
	return ret;
}