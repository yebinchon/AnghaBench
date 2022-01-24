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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct nft_set_ext_tmpl {scalar_t__ len; } ;
struct nft_set_ext {int dummy; } ;
struct nft_set {int /*<<< orphan*/  dlen; int /*<<< orphan*/  klen; TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {scalar_t__ elemsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFT_SET_EXT_DATA ; 
 int /*<<< orphan*/  NFT_SET_EXT_EXPIRATION ; 
 int /*<<< orphan*/  NFT_SET_EXT_TIMEOUT ; 
 scalar_t__ FUNC0 () ; 
 void* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct nft_set_ext* FUNC3 (struct nft_set const*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct nft_set_ext*) ; 
 scalar_t__ FUNC5 (struct nft_set_ext*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC6 (struct nft_set_ext*) ; 
 int /*<<< orphan*/  FUNC7 (struct nft_set_ext*,struct nft_set_ext_tmpl const*) ; 
 int /*<<< orphan*/  FUNC8 (struct nft_set_ext*) ; 
 scalar_t__* FUNC9 (struct nft_set_ext*) ; 

void *FUNC10(const struct nft_set *set,
			const struct nft_set_ext_tmpl *tmpl,
			const u32 *key, const u32 *data,
			u64 timeout, u64 expiration, gfp_t gfp)
{
	struct nft_set_ext *ext;
	void *elem;

	elem = FUNC1(set->ops->elemsize + tmpl->len, gfp);
	if (elem == NULL)
		return NULL;

	ext = FUNC3(set, elem);
	FUNC7(ext, tmpl);

	FUNC2(FUNC8(ext), key, set->klen);
	if (FUNC5(ext, NFT_SET_EXT_DATA))
		FUNC2(FUNC4(ext), data, set->dlen);
	if (FUNC5(ext, NFT_SET_EXT_EXPIRATION)) {
		*FUNC6(ext) = FUNC0() + expiration;
		if (expiration == 0)
			*FUNC6(ext) += timeout;
	}
	if (FUNC5(ext, NFT_SET_EXT_TIMEOUT))
		*FUNC9(ext) = timeout;

	return elem;
}