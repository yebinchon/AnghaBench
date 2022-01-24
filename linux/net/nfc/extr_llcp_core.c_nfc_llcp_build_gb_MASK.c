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
typedef  scalar_t__ u8 ;
struct nfc_llcp_local {scalar_t__ lto; scalar_t__ gb_len; scalar_t__* gb; int /*<<< orphan*/  miux; int /*<<< orphan*/  local_wks; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  LLCP_TLV_LTO ; 
 int /*<<< orphan*/  LLCP_TLV_MIUX ; 
 int /*<<< orphan*/  LLCP_TLV_VERSION ; 
 int /*<<< orphan*/  LLCP_TLV_WKS ; 
 scalar_t__ LLCP_VERSION_11 ; 
 scalar_t__ NFC_MAX_GT_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__* llcp_magic ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,scalar_t__) ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct nfc_llcp_local *local)
{
	u8 *gb_cur, version, version_length;
	u8 lto_length, wks_length, miux_length;
	u8 *version_tlv = NULL, *lto_tlv = NULL,
	   *wks_tlv = NULL, *miux_tlv = NULL;
	__be16 wks = FUNC1(local->local_wks);
	u8 gb_len = 0;
	int ret = 0;

	version = LLCP_VERSION_11;
	version_tlv = FUNC4(LLCP_TLV_VERSION, &version,
					 1, &version_length);
	if (!version_tlv) {
		ret = -ENOMEM;
		goto out;
	}
	gb_len += version_length;

	lto_tlv = FUNC4(LLCP_TLV_LTO, &local->lto, 1, &lto_length);
	if (!lto_tlv) {
		ret = -ENOMEM;
		goto out;
	}
	gb_len += lto_length;

	FUNC5("Local wks 0x%lx\n", local->local_wks);
	wks_tlv = FUNC4(LLCP_TLV_WKS, (u8 *)&wks, 2, &wks_length);
	if (!wks_tlv) {
		ret = -ENOMEM;
		goto out;
	}
	gb_len += wks_length;

	miux_tlv = FUNC4(LLCP_TLV_MIUX, (u8 *)&local->miux, 0,
				      &miux_length);
	if (!miux_tlv) {
		ret = -ENOMEM;
		goto out;
	}
	gb_len += miux_length;

	gb_len += FUNC0(llcp_magic);

	if (gb_len > NFC_MAX_GT_LEN) {
		ret = -EINVAL;
		goto out;
	}

	gb_cur = local->gb;

	FUNC3(gb_cur, llcp_magic, FUNC0(llcp_magic));
	gb_cur += FUNC0(llcp_magic);

	FUNC3(gb_cur, version_tlv, version_length);
	gb_cur += version_length;

	FUNC3(gb_cur, lto_tlv, lto_length);
	gb_cur += lto_length;

	FUNC3(gb_cur, wks_tlv, wks_length);
	gb_cur += wks_length;

	FUNC3(gb_cur, miux_tlv, miux_length);
	gb_cur += miux_length;

	local->gb_len = gb_len;

out:
	FUNC2(version_tlv);
	FUNC2(lto_tlv);
	FUNC2(wks_tlv);
	FUNC2(miux_tlv);

	return ret;
}