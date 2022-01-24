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
struct user_key_payload {size_t datalen; int /*<<< orphan*/ * data; } ;
struct key {int /*<<< orphan*/  sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  EKEYREVOKED ; 
 struct key* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct key*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct key*) ; 
 int /*<<< orphan*/  key_type_user ; 
 struct key* FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct user_key_payload* FUNC6 (struct key*) ; 

__attribute__((used)) static struct key *FUNC7(const char *master_desc, const u8 **master_key,
				    size_t *master_keylen)
{
	const struct user_key_payload *upayload;
	struct key *ukey;

	ukey = FUNC4(&key_type_user, master_desc, NULL);
	if (FUNC1(ukey))
		goto error;

	FUNC2(&ukey->sem);
	upayload = FUNC6(ukey);
	if (!upayload) {
		/* key was revoked before we acquired its semaphore */
		FUNC5(&ukey->sem);
		FUNC3(ukey);
		ukey = FUNC0(-EKEYREVOKED);
		goto error;
	}
	*master_key = upayload->data;
	*master_keylen = upayload->datalen;
error:
	return ukey;
}