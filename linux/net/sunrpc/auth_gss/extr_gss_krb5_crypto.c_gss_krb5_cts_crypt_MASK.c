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
struct xdr_buf {int len; struct page** pages; } ;
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;
struct crypto_sync_skcipher {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int GSS_KRB5_MAX_BLOCKSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct crypto_sync_skcipher*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct xdr_buf*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  req ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct scatterlist*,struct scatterlist*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct crypto_sync_skcipher*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct xdr_buf*,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static u32
FUNC13(struct crypto_sync_skcipher *cipher, struct xdr_buf *buf,
		   u32 offset, u8 *iv, struct page **pages, int encrypt)
{
	u32 ret;
	struct scatterlist sg[1];
	FUNC0(req, cipher);
	u8 *data;
	struct page **save_pages;
	u32 len = buf->len - offset;

	if (len > GSS_KRB5_MAX_BLOCKSIZE * 2) {
		FUNC1(0);
		return -ENOMEM;
	}
	data = FUNC5(GSS_KRB5_MAX_BLOCKSIZE * 2, GFP_NOFS);
	if (!data)
		return -ENOMEM;

	/*
	 * For encryption, we want to read from the cleartext
	 * page cache pages, and write the encrypted data to
	 * the supplied xdr_buf pages.
	 */
	save_pages = buf->pages;
	if (encrypt)
		buf->pages = pages;

	ret = FUNC6(buf, offset, data, len);
	buf->pages = save_pages;
	if (ret)
		goto out;

	FUNC7(sg, data, len);

	FUNC10(req, cipher);
	FUNC8(req, 0, NULL, NULL);
	FUNC9(req, sg, sg, len, iv);

	if (encrypt)
		ret = FUNC3(req);
	else
		ret = FUNC2(req);

	FUNC11(req);

	if (ret)
		goto out;

	ret = FUNC12(buf, offset, data, len);

out:
	FUNC4(data);
	return ret;
}