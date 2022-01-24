#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct crypto_shash {int dummy; } ;
struct TYPE_5__ {struct crypto_shash* tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct crypto_shash*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *) ; 
 TYPE_1__* desc ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct crypto_shash *tfm, u8 *digest,
		     const u8 *buf, unsigned int buflen)
{
	FUNC0(desc, tfm);
	int err;

	desc->tfm = tfm;

	err = FUNC1(desc, buf, buflen, digest);
	FUNC2(desc);
	return err;
}