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
struct xdr_buf {int len; } ;
struct page {int dummy; } ;
struct encryptor_desc {int pos; int /*<<< orphan*/  outfrags; int /*<<< orphan*/  infrags; scalar_t__ fraglen; scalar_t__ fragno; struct page** pages; struct xdr_buf* outbuf; int /*<<< orphan*/  req; int /*<<< orphan*/  iv; } ;
struct crypto_sync_skcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct crypto_sync_skcipher*) ; 
 int FUNC2 (struct crypto_sync_skcipher*) ; 
 int /*<<< orphan*/  encryptor ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  req ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct crypto_sync_skcipher*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct xdr_buf*,int,int,int /*<<< orphan*/ ,struct encryptor_desc*) ; 

int
FUNC9(struct crypto_sync_skcipher *tfm, struct xdr_buf *buf,
		    int offset, struct page **pages)
{
	int ret;
	struct encryptor_desc desc;
	FUNC1(req, tfm);

	FUNC0((buf->len - offset) % FUNC2(tfm) != 0);

	FUNC6(req, tfm);
	FUNC5(req, 0, NULL, NULL);

	FUNC3(desc.iv, 0, sizeof(desc.iv));
	desc.req = req;
	desc.pos = offset;
	desc.outbuf = buf;
	desc.pages = pages;
	desc.fragno = 0;
	desc.fraglen = 0;

	FUNC4(desc.infrags, 4);
	FUNC4(desc.outfrags, 4);

	ret = FUNC8(buf, offset, buf->len - offset, encryptor, &desc);
	FUNC7(req);
	return ret;
}