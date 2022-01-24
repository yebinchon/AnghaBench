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
struct TYPE_2__ {int len; char const* name; } ;
struct dentry {char* d_fsdata; int /*<<< orphan*/  d_lock; struct dentry* d_parent; TYPE_1__ d_name; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENAMETOOLONG ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 unsigned int NFS_PATH_CANONICAL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  rename_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (char const*) ; 

char *FUNC11(char **p, struct dentry *dentry, char *buffer, ssize_t buflen,
	       unsigned flags)
{
	char *end;
	int namelen;
	unsigned seq;
	const char *base;

rename_retry:
	end = buffer+buflen;
	*--end = '\0';
	buflen--;

	seq = FUNC6(&rename_lock);
	FUNC4();
	while (1) {
		FUNC8(&dentry->d_lock);
		if (FUNC1(dentry))
			break;
		namelen = dentry->d_name.len;
		buflen -= namelen + 1;
		if (buflen < 0)
			goto Elong_unlock;
		end -= namelen;
		FUNC3(end, dentry->d_name.name, namelen);
		*--end = '/';
		FUNC9(&dentry->d_lock);
		dentry = dentry->d_parent;
	}
	if (FUNC7(&rename_lock, seq)) {
		FUNC9(&dentry->d_lock);
		FUNC5();
		goto rename_retry;
	}
	if ((flags & NFS_PATH_CANONICAL) && *end != '/') {
		if (--buflen < 0) {
			FUNC9(&dentry->d_lock);
			FUNC5();
			goto Elong;
		}
		*--end = '/';
	}
	*p = end;
	base = dentry->d_fsdata;
	if (!base) {
		FUNC9(&dentry->d_lock);
		FUNC5();
		FUNC2(1);
		return end;
	}
	namelen = FUNC10(base);
	if (*end == '/') {
		/* Strip off excess slashes in base string */
		while (namelen > 0 && base[namelen - 1] == '/')
			namelen--;
	}
	buflen -= namelen;
	if (buflen < 0) {
		FUNC9(&dentry->d_lock);
		FUNC5();
		goto Elong;
	}
	end -= namelen;
	FUNC3(end, base, namelen);
	FUNC9(&dentry->d_lock);
	FUNC5();
	return end;
Elong_unlock:
	FUNC9(&dentry->d_lock);
	FUNC5();
	if (FUNC7(&rename_lock, seq))
		goto rename_retry;
Elong:
	return FUNC0(-ENAMETOOLONG);
}