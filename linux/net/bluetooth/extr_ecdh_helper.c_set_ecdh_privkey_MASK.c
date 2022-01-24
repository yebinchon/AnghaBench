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
typedef  int /*<<< orphan*/  u64 ;
struct ecdh {int key_size; int /*<<< orphan*/ * key; int /*<<< orphan*/  curve_id; int /*<<< orphan*/  member_0; } ;
struct crypto_kpp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECC_CURVE_NIST_P256 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned int,struct ecdh*) ; 
 unsigned int FUNC1 (struct ecdh*) ; 
 int FUNC2 (struct crypto_kpp*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC6(struct crypto_kpp *tfm, const u8 private_key[32])
{
	u8 *buf, *tmp = NULL;
	unsigned int buf_len;
	int err;
	struct ecdh p = {0};

	p.curve_id = ECC_CURVE_NIST_P256;

	if (private_key) {
		tmp = FUNC3(32, GFP_KERNEL);
		if (!tmp)
			return -ENOMEM;
		FUNC5((u64 *)private_key, (u64 *)tmp, 4);
		p.key = tmp;
		p.key_size = 32;
	}

	buf_len = FUNC1(&p);
	buf = FUNC3(buf_len, GFP_KERNEL);
	if (!buf) {
		err = -ENOMEM;
		goto free_tmp;
	}

	err = FUNC0(buf, buf_len, &p);
	if (err)
		goto free_all;

	err = FUNC2(tfm, buf, buf_len);
	/* fall through */
free_all:
	FUNC4(buf);
free_tmp:
	FUNC4(tmp);
	return err;
}