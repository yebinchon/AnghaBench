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
struct TYPE_2__ {struct encrypted_key_payload** data; } ;
struct key {int /*<<< orphan*/  sem; TYPE_1__ payload; } ;
struct encrypted_key_payload {int /*<<< orphan*/  decrypted_datalen; int /*<<< orphan*/  decrypted_data; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  EVMKEY ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct key*) ; 
 int /*<<< orphan*/  key_type_encrypted ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct key* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(void)
{
	struct key *evm_key;
	struct encrypted_key_payload *ekp;
	int rc;

	evm_key = FUNC5(&key_type_encrypted, EVMKEY, NULL);
	if (FUNC0(evm_key))
		return -ENOENT;

	FUNC1(&evm_key->sem);
	ekp = evm_key->payload.data[0];

	rc = FUNC2(ekp->decrypted_data, ekp->decrypted_datalen);

	/* burn the original key contents */
	FUNC4(ekp->decrypted_data, 0, ekp->decrypted_datalen);
	FUNC6(&evm_key->sem);
	FUNC3(evm_key);
	return rc;
}