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
struct ovl_fh {int len; int /*<<< orphan*/  type; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EOVERFLOW ; 
 scalar_t__ FUNC0 (struct ovl_fh*) ; 
 int FUNC1 (struct ovl_fh*) ; 
 int /*<<< orphan*/  FUNC2 (struct ovl_fh*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 struct ovl_fh* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct dentry*,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct dentry *dentry, char *buf, int buflen)
{
	struct ovl_fh *fh = NULL;
	int err, enc_lower;

	/*
	 * Check if we should encode a lower or upper file handle and maybe
	 * copy up an ancestor to make lower file handle connectable.
	 */
	err = enc_lower = FUNC4(dentry);
	if (enc_lower < 0)
		goto fail;

	/* Encode an upper or lower file handle */
	fh = FUNC7(enc_lower ? FUNC5(dentry) :
				FUNC6(dentry), !enc_lower);
	if (FUNC0(fh))
		return FUNC1(fh);

	err = -EOVERFLOW;
	if (fh->len > buflen)
		goto fail;

	FUNC3(buf, (char *)fh, fh->len);
	err = fh->len;

out:
	FUNC2(fh);
	return err;

fail:
	FUNC8("overlayfs: failed to encode file handle (%pd2, err=%i, buflen=%d, len=%d, type=%d)\n",
			    dentry, err, buflen, fh ? (int)fh->len : 0,
			    fh ? fh->type : 0);
	goto out;
}