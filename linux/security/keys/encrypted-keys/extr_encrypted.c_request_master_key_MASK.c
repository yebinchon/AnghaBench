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
struct key {int dummy; } ;
struct encrypted_key_payload {scalar_t__ master_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ENOTSUPP ; 
 struct key* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct key*) ; 
 int /*<<< orphan*/  KEY_TRUSTED_PREFIX ; 
 scalar_t__ KEY_TRUSTED_PREFIX_LEN ; 
 int /*<<< orphan*/  KEY_USER_PREFIX ; 
 scalar_t__ KEY_USER_PREFIX_LEN ; 
 int FUNC2 (struct key*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 struct key* FUNC5 (scalar_t__,int /*<<< orphan*/  const**,size_t*) ; 
 struct key* FUNC6 (scalar_t__,int /*<<< orphan*/  const**,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static struct key *FUNC8(struct encrypted_key_payload *epayload,
				      const u8 **master_key, size_t *master_keylen)
{
	struct key *mkey = FUNC0(-EINVAL);

	if (!FUNC7(epayload->master_desc, KEY_TRUSTED_PREFIX,
		     KEY_TRUSTED_PREFIX_LEN)) {
		mkey = FUNC5(epayload->master_desc +
					   KEY_TRUSTED_PREFIX_LEN,
					   master_key, master_keylen);
	} else if (!FUNC7(epayload->master_desc, KEY_USER_PREFIX,
			    KEY_USER_PREFIX_LEN)) {
		mkey = FUNC6(epayload->master_desc +
					KEY_USER_PREFIX_LEN,
					master_key, master_keylen);
	} else
		goto out;

	if (FUNC1(mkey)) {
		int ret = FUNC2(mkey);

		if (ret == -ENOTSUPP)
			FUNC4("encrypted_key: key %s not supported",
				epayload->master_desc);
		else
			FUNC4("encrypted_key: key %s not found",
				epayload->master_desc);
		goto out;
	}

	FUNC3(*master_key, *master_keylen);
out:
	return mkey;
}