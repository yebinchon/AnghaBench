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
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int i_nlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  OVL_XATTR_NLINK ; 
 TYPE_1__* FUNC0 (struct dentry*) ; 
 int FUNC1 (char*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct dentry*,int) ; 
 int FUNC3 (struct dentry*,int /*<<< orphan*/ ,char**,int) ; 

unsigned int FUNC4(struct dentry *lowerdentry,
			   struct dentry *upperdentry,
			   unsigned int fallback)
{
	int nlink_diff;
	int nlink;
	char buf[13];
	int err;

	if (!lowerdentry || !upperdentry || FUNC0(lowerdentry)->i_nlink == 1)
		return fallback;

	err = FUNC3(upperdentry, OVL_XATTR_NLINK, &buf, sizeof(buf) - 1);
	if (err < 0)
		goto fail;

	buf[err] = '\0';
	if ((buf[0] != 'L' && buf[0] != 'U') ||
	    (buf[1] != '+' && buf[1] != '-'))
		goto fail;

	err = FUNC1(buf + 1, 10, &nlink_diff);
	if (err < 0)
		goto fail;

	nlink = FUNC0(buf[0] == 'L' ? lowerdentry : upperdentry)->i_nlink;
	nlink += nlink_diff;

	if (nlink <= 0)
		goto fail;

	return nlink;

fail:
	FUNC2("overlayfs: failed to get index nlink (%pd2, err=%i)\n",
			    upperdentry, err);
	return fallback;
}