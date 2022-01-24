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
struct fscache_cookie_def {int type; int /*<<< orphan*/ * name; } ;
struct fscache_cookie {int type; int /*<<< orphan*/  flags; int /*<<< orphan*/  n_children; TYPE_1__* def; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FSCACHE_COOKIE_ENABLED ; 
#define  FSCACHE_COOKIE_TYPE_DATAFILE 129 
#define  FSCACHE_COOKIE_TYPE_INDEX 128 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct fscache_cookie*,int /*<<< orphan*/ ) ; 
 struct fscache_cookie* FUNC5 (struct fscache_cookie*,struct fscache_cookie_def const*,void const*,size_t,void const*,size_t,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fscache_cookie_discard ; 
 int /*<<< orphan*/  FUNC6 (struct fscache_cookie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fscache_cookie_put_acquire_nobufs ; 
 int /*<<< orphan*/  FUNC7 (struct fscache_cookie*) ; 
 struct fscache_cookie* FUNC8 (struct fscache_cookie*) ; 
 int /*<<< orphan*/  fscache_n_acquires ; 
 int /*<<< orphan*/  fscache_n_acquires_nobufs ; 
 int /*<<< orphan*/  fscache_n_acquires_null ; 
 int /*<<< orphan*/  fscache_n_acquires_ok ; 
 int /*<<< orphan*/  fscache_n_acquires_oom ; 
 int /*<<< orphan*/  fscache_n_cookie_data ; 
 int /*<<< orphan*/  fscache_n_cookie_index ; 
 int /*<<< orphan*/  fscache_n_cookie_special ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct fscache_cookie*) ; 
 int /*<<< orphan*/  FUNC12 (struct fscache_cookie*,int /*<<< orphan*/ ,int) ; 

struct fscache_cookie *FUNC13(
	struct fscache_cookie *parent,
	const struct fscache_cookie_def *def,
	const void *index_key, size_t index_key_len,
	const void *aux_data, size_t aux_data_len,
	void *netfs_data,
	loff_t object_size,
	bool enable)
{
	struct fscache_cookie *candidate, *cookie;

	FUNC0(!def);

	FUNC1("{%s},{%s},%p,%u",
	       parent ? (char *) parent->def->name : "<no-parent>",
	       def->name, netfs_data, enable);

	if (!index_key || !index_key_len || index_key_len > 255 || aux_data_len > 255)
		return NULL;
	if (!aux_data || !aux_data_len) {
		aux_data = NULL;
		aux_data_len = 0;
	}

	FUNC9(&fscache_n_acquires);

	/* if there's no parent cookie, then we don't create one here either */
	if (!parent) {
		FUNC9(&fscache_n_acquires_null);
		FUNC2(" [no parent]");
		return NULL;
	}

	/* validate the definition */
	FUNC0(!def->name[0]);

	FUNC0(def->type == FSCACHE_COOKIE_TYPE_INDEX &&
	       parent->type != FSCACHE_COOKIE_TYPE_INDEX);

	candidate = FUNC5(parent, def,
					 index_key, index_key_len,
					 aux_data, aux_data_len,
					 netfs_data, object_size);
	if (!candidate) {
		FUNC9(&fscache_n_acquires_oom);
		FUNC2(" [ENOMEM]");
		return NULL;
	}

	cookie = FUNC8(candidate);
	if (!cookie) {
		FUNC12(candidate, fscache_cookie_discard, 1);
		goto out;
	}

	if (cookie == candidate)
		candidate = NULL;

	switch (cookie->type) {
	case FSCACHE_COOKIE_TYPE_INDEX:
		FUNC9(&fscache_n_cookie_index);
		break;
	case FSCACHE_COOKIE_TYPE_DATAFILE:
		FUNC9(&fscache_n_cookie_data);
		break;
	default:
		FUNC9(&fscache_n_cookie_special);
		break;
	}

	FUNC11(cookie);

	if (enable) {
		/* if the object is an index then we need do nothing more here
		 * - we create indices on disk when we need them as an index
		 * may exist in multiple caches */
		if (cookie->type != FSCACHE_COOKIE_TYPE_INDEX) {
			if (FUNC4(cookie, object_size) == 0) {
				FUNC10(FSCACHE_COOKIE_ENABLED, &cookie->flags);
			} else {
				FUNC3(&parent->n_children);
				FUNC6(cookie,
						   fscache_cookie_put_acquire_nobufs);
				FUNC9(&fscache_n_acquires_nobufs);
				FUNC2(" = NULL");
				return NULL;
			}
		} else {
			FUNC10(FSCACHE_COOKIE_ENABLED, &cookie->flags);
		}
	}

	FUNC9(&fscache_n_acquires_ok);

out:
	FUNC7(candidate);
	return cookie;
}