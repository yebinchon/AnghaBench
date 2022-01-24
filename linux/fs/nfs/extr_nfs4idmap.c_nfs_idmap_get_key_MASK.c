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
struct user_key_payload {size_t datalen; int /*<<< orphan*/  data; int /*<<< orphan*/  perm; } ;
typedef  struct key {size_t datalen; int /*<<< orphan*/  data; int /*<<< orphan*/  perm; } const key ;
struct idmap {int dummy; } ;
struct cred {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 scalar_t__ FUNC0 (struct user_key_payload const*) ; 
 scalar_t__ FUNC1 (struct user_key_payload const*) ; 
 int /*<<< orphan*/  KEY_USR_VIEW ; 
 size_t FUNC2 (struct user_key_payload const*) ; 
 int /*<<< orphan*/  id_resolver_cache ; 
 int /*<<< orphan*/  FUNC3 (struct user_key_payload const*) ; 
 size_t FUNC4 (struct user_key_payload const*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,size_t) ; 
 struct user_key_payload* FUNC6 (char const*,size_t,char const*,struct idmap*) ; 
 struct cred* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct cred const*) ; 
 struct user_key_payload* FUNC11 (struct user_key_payload const*) ; 

__attribute__((used)) static ssize_t FUNC12(const char *name, size_t namelen,
				 const char *type, void *data,
				 size_t data_size, struct idmap *idmap)
{
	const struct cred *saved_cred;
	struct key *rkey;
	const struct user_key_payload *payload;
	ssize_t ret;

	saved_cred = FUNC7(id_resolver_cache);
	rkey = FUNC6(name, namelen, type, idmap);
	FUNC10(saved_cred);

	if (FUNC0(rkey)) {
		ret = FUNC2(rkey);
		goto out;
	}

	FUNC8();
	rkey->perm |= KEY_USR_VIEW;

	ret = FUNC4(rkey);
	if (ret < 0)
		goto out_up;

	payload = FUNC11(rkey);
	if (FUNC1(payload)) {
		ret = FUNC2(payload);
		goto out_up;
	}

	ret = payload->datalen;
	if (ret > 0 && ret <= data_size)
		FUNC5(data, payload->data, ret);
	else
		ret = -EINVAL;

out_up:
	FUNC9();
	FUNC3(rkey);
out:
	return ret;
}