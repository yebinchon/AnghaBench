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
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct cred {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EIO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct dentry* FUNC3 (struct dentry*) ; 
 struct cred* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cred const*) ; 
 int FUNC6 (char*,size_t) ; 
 size_t FUNC7 (struct dentry*,char*,size_t) ; 

ssize_t FUNC8(struct dentry *dentry, char *list, size_t size)
{
	struct dentry *realdentry = FUNC3(dentry);
	ssize_t res;
	size_t len;
	char *s;
	const struct cred *old_cred;

	old_cred = FUNC4(dentry->d_sb);
	res = FUNC7(realdentry, list, size);
	FUNC5(old_cred);
	if (res <= 0 || size == 0)
		return res;

	/* filter out private xattrs */
	for (s = list, len = res; len;) {
		size_t slen = FUNC6(s, len) + 1;

		/* underlying fs providing us with an broken xattr list? */
		if (FUNC0(slen > len))
			return -EIO;

		len -= slen;
		if (!FUNC2(s)) {
			res -= slen;
			FUNC1(s, s + slen, len);
		} else {
			s += slen;
		}
	}

	return res;
}