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
struct ceph_crypto_key {int /*<<< orphan*/ * tfm; int /*<<< orphan*/ * key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct ceph_crypto_key *key)
{
	if (key) {
		FUNC1(key->key);
		key->key = NULL;
		if (key->tfm) {
			FUNC0(key->tfm);
			key->tfm = NULL;
		}
	}
}