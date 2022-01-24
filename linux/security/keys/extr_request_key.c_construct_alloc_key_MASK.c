#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  description; TYPE_1__* type; } ;
struct keyring_search_context {TYPE_4__ index_key; TYPE_3__* cred; } ;
struct key_user {int /*<<< orphan*/  cons_lock; } ;
struct key {int /*<<< orphan*/  flags; } ;
struct assoc_array_edit {int dummy; } ;
typedef  struct key* key_ref_t ;
typedef  int key_perm_t ;
struct TYPE_8__ {int /*<<< orphan*/  fsgid; int /*<<< orphan*/  fsuid; } ;
struct TYPE_7__ {scalar_t__ update; scalar_t__ read; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int /*<<< orphan*/  KEY_FLAG_USER_CONSTRUCT ; 
 int KEY_POS_LINK ; 
 int KEY_POS_READ ; 
 int KEY_POS_SEARCH ; 
 int KEY_POS_SETATTR ; 
 int KEY_POS_VIEW ; 
 int KEY_POS_WRITE ; 
 int KEY_USR_VIEW ; 
 int FUNC1 (struct key*) ; 
 int /*<<< orphan*/  FUNC2 (struct key*,struct assoc_array_edit**) ; 
 int FUNC3 (struct key*,TYPE_4__*,struct assoc_array_edit**) ; 
 int FUNC4 (struct key*,struct key*) ; 
 int /*<<< orphan*/  FUNC5 (struct key*,TYPE_4__*,struct assoc_array_edit*) ; 
 int FUNC6 (struct key*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct key* FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_construction_mutex ; 
 int /*<<< orphan*/  FUNC9 (struct key*) ; 
 struct key* FUNC10 (struct key*) ; 
 int FUNC11 (struct key*) ; 
 TYPE_1__ key_type_keyring ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 struct key* FUNC17 (struct keyring_search_context*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct keyring_search_context *ctx,
			       struct key *dest_keyring,
			       unsigned long flags,
			       struct key_user *user,
			       struct key **_key)
{
	struct assoc_array_edit *edit = NULL;
	struct key *key;
	key_perm_t perm;
	key_ref_t key_ref;
	int ret;

	FUNC7("%s,%s,,,",
	       ctx->index_key.type->name, ctx->index_key.description);

	*_key = NULL;
	FUNC13(&user->cons_lock);

	perm = KEY_POS_VIEW | KEY_POS_SEARCH | KEY_POS_LINK | KEY_POS_SETATTR;
	perm |= KEY_USR_VIEW;
	if (ctx->index_key.type->read)
		perm |= KEY_POS_READ;
	if (ctx->index_key.type == &key_type_keyring ||
	    ctx->index_key.type->update)
		perm |= KEY_POS_WRITE;

	key = FUNC8(ctx->index_key.type, ctx->index_key.description,
			ctx->cred->fsuid, ctx->cred->fsgid, ctx->cred,
			perm, flags, NULL);
	if (FUNC0(key))
		goto alloc_failed;

	FUNC18(KEY_FLAG_USER_CONSTRUCT, &key->flags);

	if (dest_keyring) {
		ret = FUNC6(dest_keyring, &ctx->index_key);
		if (ret < 0)
			goto link_lock_failed;
		ret = FUNC3(dest_keyring, &ctx->index_key, &edit);
		if (ret < 0)
			goto link_prealloc_failed;
	}

	/* attach the key to the destination keyring under lock, but we do need
	 * to do another check just in case someone beat us to it whilst we
	 * waited for locks */
	FUNC13(&key_construction_mutex);

	FUNC15();
	key_ref = FUNC17(ctx);
	FUNC16();
	if (!FUNC0(key_ref))
		goto key_already_present;

	if (dest_keyring)
		FUNC2(key, &edit);

	FUNC14(&key_construction_mutex);
	if (dest_keyring)
		FUNC5(dest_keyring, &ctx->index_key, edit);
	FUNC14(&user->cons_lock);
	*_key = key;
	FUNC12(" = 0 [%d]", FUNC11(key));
	return 0;

	/* the key is now present - we tell the caller that we found it by
	 * returning -EINPROGRESS  */
key_already_present:
	FUNC9(key);
	FUNC14(&key_construction_mutex);
	key = FUNC10(key_ref);
	if (dest_keyring) {
		ret = FUNC4(dest_keyring, key);
		if (ret == 0)
			FUNC2(key, &edit);
		FUNC5(dest_keyring, &ctx->index_key, edit);
		if (ret < 0)
			goto link_check_failed;
	}
	FUNC14(&user->cons_lock);
	*_key = key;
	FUNC12(" = -EINPROGRESS [%d]", FUNC11(key));
	return -EINPROGRESS;

link_check_failed:
	FUNC14(&user->cons_lock);
	FUNC9(key);
	FUNC12(" = %d [linkcheck]", ret);
	return ret;

link_prealloc_failed:
	FUNC5(dest_keyring, &ctx->index_key, edit);
link_lock_failed:
	FUNC14(&user->cons_lock);
	FUNC9(key);
	FUNC12(" = %d [prelink]", ret);
	return ret;

alloc_failed:
	FUNC14(&user->cons_lock);
	FUNC12(" = %ld", FUNC1(key));
	return FUNC1(key);
}