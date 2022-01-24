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
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  const u8 ;
struct crypto_shash {int dummy; } ;
struct TYPE_5__ {struct crypto_shash* tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int CMAC_MSG_MAX ; 
 int EFBIG ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,...) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*) ; 
 int FUNC4 (struct crypto_shash*,int /*<<< orphan*/  const*,int) ; 
 TYPE_1__* desc ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC7(struct crypto_shash *tfm, const u8 k[16], const u8 *m,
		    size_t len, u8 mac[16])
{
	uint8_t tmp[16], mac_msb[16], msg_msb[CMAC_MSG_MAX];
	FUNC1(desc, tfm);
	int err;

	if (len > CMAC_MSG_MAX)
		return -EFBIG;

	if (!tfm) {
		FUNC0("tfm %p", tfm);
		return -EINVAL;
	}

	desc->tfm = tfm;

	/* Swap key and message from LSB to MSB */
	FUNC6(k, tmp, 16);
	FUNC6(m, msg_msb, len);

	FUNC2("msg (len %zu) %*phN", len, (int) len, m);
	FUNC2("key %16phN", k);

	err = FUNC4(tfm, tmp, 16);
	if (err) {
		FUNC0("cipher setkey failed: %d", err);
		return err;
	}

	err = FUNC3(desc, msg_msb, len, mac_msb);
	FUNC5(desc);
	if (err) {
		FUNC0("Hash computation error %d", err);
		return err;
	}

	FUNC6(mac_msb, mac, 16);

	FUNC2("mac %16phN", mac);

	return 0;
}