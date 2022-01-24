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
struct key {int /*<<< orphan*/  flags; } ;
struct idmap {int /*<<< orphan*/  idmap_mutex; TYPE_1__* cred; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/ * user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 struct key* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct key*) ; 
 int /*<<< orphan*/  KEY_FLAG_ROOT_CAN_INVAL ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  key_type_id_resolver ; 
 int /*<<< orphan*/  key_type_id_resolver_legacy ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,size_t,char const*,int /*<<< orphan*/ ,char**) ; 
 struct key* FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 struct key* FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,struct idmap*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

__attribute__((used)) static struct key *FUNC10(const char *name, size_t namelen,
					 const char *type, struct idmap *idmap)
{
	char *desc;
	struct key *rkey = FUNC0(-EAGAIN);
	ssize_t ret;

	ret = FUNC5(name, namelen, type, FUNC9(type), &desc);
	if (ret < 0)
		return FUNC0(ret);

	if (!idmap->cred || idmap->cred->user_ns == &init_user_ns)
		rkey = FUNC6(&key_type_id_resolver, desc, "");
	if (FUNC1(rkey)) {
		FUNC3(&idmap->idmap_mutex);
		rkey = FUNC7(&key_type_id_resolver_legacy,
						desc, NULL, "", 0, idmap);
		FUNC4(&idmap->idmap_mutex);
	}
	if (!FUNC1(rkey))
		FUNC8(KEY_FLAG_ROOT_CAN_INVAL, &rkey->flags);

	FUNC2(desc);
	return rkey;
}