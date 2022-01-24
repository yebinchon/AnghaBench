#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct crypto_shash {int dummy; } ;
struct TYPE_6__ {struct crypto_shash* tfm; } ;

/* Variables and functions */
 scalar_t__ AAD_LEN ; 
 int AES_BLOCK_SIZE ; 
 scalar_t__ CMAC_TLEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 TYPE_1__* desc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  zero ; 

void FUNC5(struct crypto_shash *tfm, const u8 *aad,
			const u8 *data, size_t data_len, u8 *mic)
{
	FUNC0(desc, tfm);
	u8 out[AES_BLOCK_SIZE];

	desc->tfm = tfm;

	FUNC2(desc);
	FUNC3(desc, aad, AAD_LEN);
	FUNC3(desc, data, data_len - CMAC_TLEN);
	FUNC1(desc, zero, CMAC_TLEN, out);

	FUNC4(mic, out, CMAC_TLEN);
}