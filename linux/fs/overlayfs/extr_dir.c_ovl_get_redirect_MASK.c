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
struct TYPE_2__ {char* name; int len; } ;
struct dentry {int /*<<< orphan*/  d_lock; int /*<<< orphan*/  d_parent; TYPE_1__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXDEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 
 char* FUNC10 (struct dentry*) ; 
 int ovl_redirect_max ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (char const*) ; 

__attribute__((used)) static char *FUNC14(struct dentry *dentry, bool abs_redirect)
{
	char *buf, *ret;
	struct dentry *d, *tmp;
	int buflen = ovl_redirect_max + 1;

	if (!abs_redirect) {
		ret = FUNC8(dentry->d_name.name, dentry->d_name.len,
			       GFP_KERNEL);
		goto out;
	}

	buf = ret = FUNC6(buflen, GFP_KERNEL);
	if (!buf)
		goto out;

	buflen--;
	buf[buflen] = '\0';
	for (d = FUNC2(dentry); !FUNC1(d);) {
		const char *name;
		int thislen;

		FUNC11(&d->d_lock);
		name = FUNC10(d);
		if (name) {
			thislen = FUNC13(name);
		} else {
			name = d->d_name.name;
			thislen = d->d_name.len;
		}

		/* If path is too long, fall back to userspace move */
		if (thislen + (name[0] != '/') > buflen) {
			ret = FUNC0(-EXDEV);
			FUNC12(&d->d_lock);
			goto out_put;
		}

		buflen -= thislen;
		FUNC9(&buf[buflen], name, thislen);
		tmp = FUNC3(d->d_parent);
		FUNC12(&d->d_lock);

		FUNC4(d);
		d = tmp;

		/* Absolute redirect: finished */
		if (buf[buflen] == '/')
			break;
		buflen--;
		buf[buflen] = '/';
	}
	ret = FUNC7(&buf[buflen], GFP_KERNEL);
out_put:
	FUNC4(d);
	FUNC5(buf);
out:
	return ret ? ret : FUNC0(-ENOMEM);
}