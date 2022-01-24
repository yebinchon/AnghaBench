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
struct ovl_fh {scalar_t__ len; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENODATA ; 
 int ESTALE ; 
 scalar_t__ FUNC0 (struct ovl_fh*) ; 
 int FUNC1 (struct ovl_fh*) ; 
 int /*<<< orphan*/  FUNC2 (struct ovl_fh*) ; 
 scalar_t__ FUNC3 (struct ovl_fh const*,struct ovl_fh*,scalar_t__) ; 
 struct ovl_fh* FUNC4 (struct dentry*,char const*) ; 

__attribute__((used)) static int FUNC5(struct dentry *dentry, const char *name,
			 const struct ovl_fh *fh)
{
	struct ovl_fh *ofh = FUNC4(dentry, name);
	int err = 0;

	if (!ofh)
		return -ENODATA;

	if (FUNC0(ofh))
		return FUNC1(ofh);

	if (fh->len != ofh->len || FUNC3(fh, ofh, fh->len))
		err = -ESTALE;

	FUNC2(ofh);
	return err;
}