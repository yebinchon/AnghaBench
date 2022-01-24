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
typedef  int /*<<< orphan*/  uint8_t ;
struct user_key_payload {int /*<<< orphan*/  datalen; int /*<<< orphan*/  data; } ;
struct key {int /*<<< orphan*/  sem; int /*<<< orphan*/ * type; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  key_serial_t ;
typedef  int /*<<< orphan*/  key_ref_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOKEY ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_NEED_READ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct key*) ; 
 struct key* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  key_type_user ; 
 long FUNC4 (struct key*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct user_key_payload* FUNC8 (struct key*) ; 

__attribute__((used)) static ssize_t FUNC9(key_serial_t keyid, void **data)
{
	struct key *key;
	key_ref_t key_ref;
	long status;
	ssize_t ret;

	key_ref = FUNC6(keyid, 0, KEY_NEED_READ);
	if (FUNC0(key_ref)) {
		ret = -ENOKEY;
		goto error;
	}

	key = FUNC3(key_ref);

	ret = -EOPNOTSUPP;
	if (key->type == &key_type_user) {
		FUNC1(&key->sem);
		status = FUNC4(key);
		if (status == 0) {
			const struct user_key_payload *payload;
			uint8_t *duplicate;

			payload = FUNC8(key);

			duplicate = FUNC5(payload->data, payload->datalen,
					    GFP_KERNEL);
			if (duplicate) {
				*data = duplicate;
				ret = payload->datalen;
			} else {
				ret = -ENOMEM;
			}
		}
		FUNC7(&key->sem);
	}

	FUNC2(key);
error:
	return ret;
}