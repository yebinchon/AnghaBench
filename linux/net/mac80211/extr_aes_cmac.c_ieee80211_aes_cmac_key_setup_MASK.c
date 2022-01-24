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
typedef  int /*<<< orphan*/  u8 ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto_shash*) ; 
 struct crypto_shash* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_shash*,int /*<<< orphan*/  const*,size_t) ; 

struct crypto_shash *FUNC3(const u8 key[],
						  size_t key_len)
{
	struct crypto_shash *tfm;

	tfm = FUNC1("cmac(aes)", 0, 0);
	if (!FUNC0(tfm))
		FUNC2(tfm, key, key_len);

	return tfm;
}