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
typedef  int u32 ;
struct crypto_shash {int dummy; } ;
typedef  int /*<<< orphan*/  m ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int FUNC1 (struct crypto_shash*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC4(struct crypto_shash *tfm_cmac, const u8 u[32], const u8 v[32],
		  const u8 x[16], const u8 y[16], u32 *val)
{
	u8 m[80], tmp[16];
	int err;

	FUNC0("u %32phN", u);
	FUNC0("v %32phN", v);
	FUNC0("x %16phN y %16phN", x, y);

	FUNC3(m, y, 16);
	FUNC3(m + 16, v, 32);
	FUNC3(m + 48, u, 32);

	err = FUNC1(tfm_cmac, x, m, sizeof(m), tmp);
	if (err)
		return err;

	*val = FUNC2(tmp);
	*val %= 1000000;

	FUNC0("val %06u", *val);

	return 0;
}