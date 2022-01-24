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
struct path {int /*<<< orphan*/ * mnt; int /*<<< orphan*/ * dentry; } ;
struct fs_parameter {int type; int /*<<< orphan*/  key; int /*<<< orphan*/  dirfd; struct filename* name; int /*<<< orphan*/  string; } ;
struct fs_context {int dummy; } ;
struct filename {int /*<<< orphan*/  name; int /*<<< orphan*/  refcnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int ENOTBLK ; 
 int /*<<< orphan*/  FUNC0 (struct filename*) ; 
 unsigned int LOOKUP_EMPTY ; 
 int FUNC1 (struct filename*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fs_context*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct filename*,unsigned int,struct path*,int /*<<< orphan*/ *) ; 
#define  fs_value_is_filename 130 
#define  fs_value_is_filename_empty 129 
#define  fs_value_is_string 128 
 struct filename* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct fs_context*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct path*) ; 
 int /*<<< orphan*/  FUNC9 (struct filename*) ; 

int FUNC10(struct fs_context *fc,
		    struct fs_parameter *param,
		    bool want_bdev,
		    struct path *_path)
{
	struct filename *f;
	unsigned int flags = 0;
	bool put_f;
	int ret;

	switch (param->type) {
	case fs_value_is_string:
		f = FUNC6(param->string);
		if (FUNC0(f))
			return FUNC1(f);
		put_f = true;
		break;
	case fs_value_is_filename_empty:
		flags = LOOKUP_EMPTY;
		/* Fall through */
	case fs_value_is_filename:
		f = param->name;
		put_f = false;
		break;
	default:
		return FUNC7(fc, "%s: not usable as path", param->key);
	}

	f->refcnt++; /* filename_lookup() drops our ref. */
	ret = FUNC5(param->dirfd, f, flags, _path, NULL);
	if (ret < 0) {
		FUNC4(fc, "%s: Lookup failure for '%s'", param->key, f->name);
		goto out;
	}

	if (want_bdev &&
	    !FUNC2(FUNC3(_path->dentry)->i_mode)) {
		FUNC8(_path);
		_path->dentry = NULL;
		_path->mnt = NULL;
		FUNC4(fc, "%s: Non-blockdev passed as '%s'",
		       param->key, f->name);
		ret = -ENOTBLK;
	}

out:
	if (put_f)
		FUNC9(f);
	return ret;
}