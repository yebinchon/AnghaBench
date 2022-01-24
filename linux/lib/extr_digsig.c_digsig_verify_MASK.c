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
typedef  int /*<<< orphan*/  uint64_t ;
struct signature_hdr {scalar_t__ algo; scalar_t__ keyid; } ;
struct shash_desc {int /*<<< orphan*/  tfm; } ;
struct key {int dummy; } ;
typedef  struct key* key_ref_t ;
typedef  int /*<<< orphan*/  hash ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 struct key* FUNC0 (struct key*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct key*) ; 
 int FUNC2 (struct key*) ; 
 scalar_t__ PUBKEY_ALGO_RSA ; 
 int SHA1_DIGEST_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct shash_desc*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (struct shash_desc*) ; 
 int /*<<< orphan*/  FUNC7 (struct shash_desc*,char const*,int) ; 
 int FUNC8 (struct key*,char const*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct key*) ; 
 struct key* FUNC10 (struct key*) ; 
 int /*<<< orphan*/  key_type_user ; 
 struct key* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct shash_desc*) ; 
 struct shash_desc* FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct key*,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 struct key* FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shash ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int /*<<< orphan*/ ) ; 

int FUNC18(struct key *keyring, const char *sig, int siglen,
						const char *data, int datalen)
{
	int err = -ENOMEM;
	struct signature_hdr *sh = (struct signature_hdr *)sig;
	struct shash_desc *desc = NULL;
	unsigned char hash[SHA1_DIGEST_SIZE];
	struct key *key;
	char name[20];

	if (siglen < sizeof(*sh) + 2)
		return -EINVAL;

	if (sh->algo != PUBKEY_ALGO_RSA)
		return -ENOTSUPP;

	FUNC17(name, "%llX", FUNC3((uint64_t *)sh->keyid));

	if (keyring) {
		/* search in specific keyring */
		key_ref_t kref;
		kref = FUNC11(FUNC14(keyring, 1UL),
				      &key_type_user, name, true);
		if (FUNC1(kref))
			key = FUNC0(kref);
		else
			key = FUNC10(kref);
	} else {
		key = FUNC16(&key_type_user, name, NULL);
	}
	if (FUNC1(key)) {
		FUNC15("key not found, id: %s\n", name);
		return FUNC2(key);
	}

	desc = FUNC13(sizeof(*desc) + FUNC4(shash),
		       GFP_KERNEL);
	if (!desc)
		goto err;

	desc->tfm = shash;

	FUNC6(desc);
	FUNC7(desc, data, datalen);
	FUNC7(desc, sig, sizeof(*sh));
	FUNC5(desc, hash);

	FUNC12(desc);

	/* pass signature mpis address */
	err = FUNC8(key, sig + sizeof(*sh), siglen - sizeof(*sh),
			     hash, sizeof(hash));

err:
	FUNC9(key);

	return err ? -EINVAL : 0;
}