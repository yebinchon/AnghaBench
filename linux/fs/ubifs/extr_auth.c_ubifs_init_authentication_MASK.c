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
struct user_key_payload {int /*<<< orphan*/  datalen; int /*<<< orphan*/  data; } ;
struct ubifs_info {char* auth_hash_name; int authenticated; struct key* hash_tfm; struct key* hmac_tfm; struct key* log_hash; void* hmac_desc_len; void* hash_len; int /*<<< orphan*/  auth_key_name; scalar_t__ auth_hash_algo; } ;
struct key {int /*<<< orphan*/  sem; int /*<<< orphan*/ * type; } ;

/* Variables and functions */
 int CRYPTO_MAX_ALG_NAME ; 
 int EINVAL ; 
 int EKEYREVOKED ; 
 int ENOKEY ; 
 int /*<<< orphan*/  HASH_ALGO__LAST ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int FUNC1 (struct key*) ; 
 void* UBIFS_HASH_ARR_SZ ; 
 void* UBIFS_HMAC_ARR_SZ ; 
 void* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct key*) ; 
 void* FUNC4 (struct key*) ; 
 int FUNC5 (struct key*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hash_algo_name ; 
 int /*<<< orphan*/  FUNC7 (struct key*) ; 
 int /*<<< orphan*/  key_type_logon ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct key* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct ubifs_info*,char*,...) ; 
 struct key* FUNC12 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct user_key_payload* FUNC14 (struct key*) ; 

int FUNC15(struct ubifs_info *c)
{
	struct key *keyring_key;
	const struct user_key_payload *ukp;
	int err;
	char hmac_name[CRYPTO_MAX_ALG_NAME];

	if (!c->auth_hash_name) {
		FUNC11(c, "authentication hash name needed with authentication");
		return -EINVAL;
	}

	c->auth_hash_algo = FUNC8(hash_algo_name, HASH_ALGO__LAST,
					 c->auth_hash_name);
	if ((int)c->auth_hash_algo < 0) {
		FUNC11(c, "Unknown hash algo %s specified",
			  c->auth_hash_name);
		return -EINVAL;
	}

	FUNC10(hmac_name, CRYPTO_MAX_ALG_NAME, "hmac(%s)",
		 c->auth_hash_name);

	keyring_key = FUNC9(&key_type_logon, c->auth_key_name, NULL);

	if (FUNC0(keyring_key)) {
		FUNC11(c, "Failed to request key: %ld",
			  FUNC1(keyring_key));
		return FUNC1(keyring_key);
	}

	FUNC6(&keyring_key->sem);

	if (keyring_key->type != &key_type_logon) {
		FUNC11(c, "key type must be logon");
		err = -ENOKEY;
		goto out;
	}

	ukp = FUNC14(keyring_key);
	if (!ukp) {
		/* key was revoked before we acquired its semaphore */
		err = -EKEYREVOKED;
		goto out;
	}

	c->hash_tfm = FUNC2(c->auth_hash_name, 0, 0);
	if (FUNC0(c->hash_tfm)) {
		err = FUNC1(c->hash_tfm);
		FUNC11(c, "Can not allocate %s: %d",
			  c->auth_hash_name, err);
		goto out;
	}

	c->hash_len = FUNC4(c->hash_tfm);
	if (c->hash_len > UBIFS_HASH_ARR_SZ) {
		FUNC11(c, "hash %s is bigger than maximum allowed hash size (%d > %d)",
			  c->auth_hash_name, c->hash_len, UBIFS_HASH_ARR_SZ);
		err = -EINVAL;
		goto out_free_hash;
	}

	c->hmac_tfm = FUNC2(hmac_name, 0, 0);
	if (FUNC0(c->hmac_tfm)) {
		err = FUNC1(c->hmac_tfm);
		FUNC11(c, "Can not allocate %s: %d", hmac_name, err);
		goto out_free_hash;
	}

	c->hmac_desc_len = FUNC4(c->hmac_tfm);
	if (c->hmac_desc_len > UBIFS_HMAC_ARR_SZ) {
		FUNC11(c, "hmac %s is bigger than maximum allowed hmac size (%d > %d)",
			  hmac_name, c->hmac_desc_len, UBIFS_HMAC_ARR_SZ);
		err = -EINVAL;
		goto out_free_hash;
	}

	err = FUNC5(c->hmac_tfm, ukp->data, ukp->datalen);
	if (err)
		goto out_free_hmac;

	c->authenticated = true;

	c->log_hash = FUNC12(c);
	if (FUNC0(c->log_hash))
		goto out_free_hmac;

	err = 0;

out_free_hmac:
	if (err)
		FUNC3(c->hmac_tfm);
out_free_hash:
	if (err)
		FUNC3(c->hash_tfm);
out:
	FUNC13(&keyring_key->sem);
	FUNC7(keyring_key);

	return err;
}