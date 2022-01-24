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
struct shash_desc {int dummy; } ;
struct TYPE_2__ {struct crypto_shash* tfm; } ;
struct sdesc {TYPE_1__ shash; } ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct sdesc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct crypto_shash*) ; 
 struct sdesc* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sdesc *FUNC3(struct crypto_shash *alg)
{
	struct sdesc *sdesc;
	int size;

	size = sizeof(struct shash_desc) + FUNC1(alg);
	sdesc = FUNC2(size, GFP_KERNEL);
	if (!sdesc)
		return FUNC0(-ENOMEM);
	sdesc->shash.tfm = alg;
	return sdesc;
}