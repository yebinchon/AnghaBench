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
struct mac802154_llsec_key {struct crypto_aead** tfm; } ;
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct crypto_aead**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct crypto_aead*) ; 

__attribute__((used)) static struct crypto_aead*
FUNC3(struct mac802154_llsec_key *key, int authlen)
{
	int i;

	for (i = 0; i < FUNC0(key->tfm); i++)
		if (FUNC2(key->tfm[i]) == authlen)
			return key->tfm[i];

	FUNC1();
}