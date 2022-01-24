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
struct key_preparsed_payload {int dummy; } ;
struct key {int /*<<< orphan*/  sem; TYPE_1__* type; } ;
typedef  int /*<<< orphan*/  key_ref_t ;
struct TYPE_2__ {int (* update ) (struct key*,struct key_preparsed_payload*) ;} ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KEY_NEED_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct key*) ; 
 struct key* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct key*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct key*,struct key_preparsed_payload*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline key_ref_t FUNC8(key_ref_t key_ref,
				     struct key_preparsed_payload *prep)
{
	struct key *key = FUNC4(key_ref);
	int ret;

	/* need write permission on the key to update it */
	ret = FUNC2(key_ref, KEY_NEED_WRITE);
	if (ret < 0)
		goto error;

	ret = -EEXIST;
	if (!key->type->update)
		goto error;

	FUNC1(&key->sem);

	ret = key->type->update(key, prep);
	if (ret == 0)
		/* Updating a negative key positively instantiates it */
		FUNC5(key, 0);

	FUNC7(&key->sem);

	if (ret < 0)
		goto error;
out:
	return key_ref;

error:
	FUNC3(key);
	key_ref = FUNC0(ret);
	goto out;
}