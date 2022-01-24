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
struct scatterlist {int length; scalar_t__ offset; } ;
struct decryptor_desc {int fraglen; int fragno; int /*<<< orphan*/ * frags; int /*<<< orphan*/  req; int /*<<< orphan*/  iv; } ;
struct crypto_sync_skcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct crypto_sync_skcipher*) ; 
 struct crypto_sync_skcipher* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct scatterlist *sg, void *data)
{
	struct decryptor_desc *desc = data;
	int thislen = desc->fraglen + sg->length;
	struct crypto_sync_skcipher *tfm =
		FUNC3(desc->req);
	int fraglen, ret;

	/* Worst case is 4 fragments: head, end of page 1, start
	 * of page 2, tail.  Anything more is a bug. */
	FUNC0(desc->fragno > 3);
	FUNC7(&desc->frags[desc->fragno], FUNC6(sg), sg->length,
		    sg->offset);
	desc->fragno++;
	desc->fraglen += sg->length;

	fraglen = thislen & (FUNC2(tfm) - 1);
	thislen -= fraglen;

	if (thislen == 0)
		return 0;

	FUNC5(&desc->frags[desc->fragno - 1]);

	FUNC8(desc->req, desc->frags, desc->frags,
				   thislen, desc->iv);

	ret = FUNC1(desc->req);
	if (ret)
		return ret;

	FUNC4(desc->frags, 4);

	if (fraglen) {
		FUNC7(&desc->frags[0], FUNC6(sg), fraglen,
				sg->offset + sg->length - fraglen);
		desc->fragno = 1;
		desc->fraglen = fraglen;
	} else {
		desc->fragno = 0;
		desc->fraglen = 0;
	}
	return 0;
}