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
struct ubifs_info {int dummy; } ;
struct shash_desc {struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct shash_desc* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct crypto_shash*) ; 
 int FUNC2 (struct shash_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct shash_desc*) ; 
 struct shash_desc* FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info const*) ; 

__attribute__((used)) static struct shash_desc *FUNC6(const struct ubifs_info *c,
					 struct crypto_shash *tfm)
{
	struct shash_desc *desc;
	int err;

	if (!FUNC5(c))
		return NULL;

	desc = FUNC4(sizeof(*desc) + FUNC1(tfm), GFP_KERNEL);
	if (!desc)
		return FUNC0(-ENOMEM);

	desc->tfm = tfm;

	err = FUNC2(desc);
	if (err) {
		FUNC3(desc);
		return FUNC0(err);
	}

	return desc;
}