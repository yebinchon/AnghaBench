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

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  EVM_INIT_HMAC ; 
 int /*<<< orphan*/  EVM_SET_KEY_BUSY ; 
 size_t MAX_KEY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  evm_initialized ; 
 int /*<<< orphan*/  evm_set_key_flags ; 
 int /*<<< orphan*/  evmkey ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(void *key, size_t keylen)
{
	int rc;

	rc = -EBUSY;
	if (FUNC4(EVM_SET_KEY_BUSY, &evm_set_key_flags))
		goto busy;
	rc = -EINVAL;
	if (keylen > MAX_KEY_SIZE)
		goto inval;
	FUNC1(evmkey, key, keylen);
	evm_initialized |= EVM_INIT_HMAC;
	FUNC3("key initialized\n");
	return 0;
inval:
	FUNC0(EVM_SET_KEY_BUSY, &evm_set_key_flags);
busy:
	FUNC2("key initialization failed\n");
	return rc;
}