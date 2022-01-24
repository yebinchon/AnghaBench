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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,...) ; 
 int FUNC1 (struct crypto_shash*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct crypto_shash *tfm_cmac, const u8 w[16],
		  const u8 salt[16], u8 res[16])
{
	int err;

	FUNC0("w %16phN salt %16phN", w, salt);

	err = FUNC1(tfm_cmac, salt, w, 16, res);
	if (err)
		return err;

	FUNC0("res %16phN", res);

	return err;
}