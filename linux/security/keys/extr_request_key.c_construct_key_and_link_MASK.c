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
struct TYPE_2__ {int /*<<< orphan*/ * type; } ;
struct keyring_search_context {TYPE_1__ index_key; } ;
struct key_user {int dummy; } ;
struct key {int dummy; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int ENOMEM ; 
 int EPERM ; 
 struct key* FUNC0 (int) ; 
 int FUNC1 (struct keyring_search_context*,struct key*,unsigned long,struct key_user*,struct key**) ; 
 int FUNC2 (struct key**) ; 
 int FUNC3 (struct key*,char const*,size_t,void*,struct key*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct key*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_negative_timeout ; 
 int /*<<< orphan*/  FUNC8 (struct key*) ; 
 int FUNC9 (struct key*) ; 
 int /*<<< orphan*/  key_type_keyring ; 
 struct key_user* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct key_user*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 

__attribute__((used)) static struct key *FUNC13(struct keyring_search_context *ctx,
					  const char *callout_info,
					  size_t callout_len,
					  void *aux,
					  struct key *dest_keyring,
					  unsigned long flags)
{
	struct key_user *user;
	struct key *key;
	int ret;

	FUNC6("");

	if (ctx->index_key.type == &key_type_keyring)
		return FUNC0(-EPERM);

	ret = FUNC2(&dest_keyring);
	if (ret)
		goto error;

	user = FUNC10(FUNC4());
	if (!user) {
		ret = -ENOMEM;
		goto error_put_dest_keyring;
	}

	ret = FUNC1(ctx, dest_keyring, flags, user, &key);
	FUNC11(user);

	if (ret == 0) {
		ret = FUNC3(key, callout_info, callout_len, aux,
				    dest_keyring);
		if (ret < 0) {
			FUNC5("cons failed");
			goto construction_failed;
		}
	} else if (ret == -EINPROGRESS) {
		ret = 0;
	} else {
		goto error_put_dest_keyring;
	}

	FUNC8(dest_keyring);
	FUNC12(" = key %d", FUNC9(key));
	return key;

construction_failed:
	FUNC7(key, key_negative_timeout, NULL, NULL);
	FUNC8(key);
error_put_dest_keyring:
	FUNC8(dest_keyring);
error:
	FUNC12(" = %d", ret);
	return FUNC0(ret);
}