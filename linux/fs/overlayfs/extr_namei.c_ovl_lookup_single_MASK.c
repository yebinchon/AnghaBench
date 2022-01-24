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
struct ovl_lookup_data {int stop; int opaque; int metacopy; int is_dir; scalar_t__ last; int /*<<< orphan*/  sb; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int ELOOP ; 
 int ENAMETOOLONG ; 
 int ENOENT ; 
 int EREMOTE ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (char const*,struct dentry*,unsigned int) ; 
 int FUNC6 (struct dentry*) ; 
 int FUNC7 (struct dentry*,struct ovl_lookup_data*,size_t,char const*) ; 
 scalar_t__ FUNC8 (struct dentry*) ; 
 scalar_t__ FUNC9 (struct dentry*) ; 
 scalar_t__ FUNC10 (struct dentry*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct dentry*) ; 

__attribute__((used)) static int FUNC12(struct dentry *base, struct ovl_lookup_data *d,
			     const char *name, unsigned int namelen,
			     size_t prelen, const char *post,
			     struct dentry **ret)
{
	struct dentry *this;
	int err;
	bool last_element = !post[0];

	this = FUNC5(name, base, namelen);
	if (FUNC0(this)) {
		err = FUNC1(this);
		this = NULL;
		if (err == -ENOENT || err == -ENAMETOOLONG)
			goto out;
		goto out_err;
	}
	if (!this->d_inode)
		goto put_and_out;

	if (FUNC8(this)) {
		/* Don't support traversing automounts and other weirdness */
		err = -EREMOTE;
		goto out_err;
	}
	if (FUNC10(this)) {
		d->stop = d->opaque = true;
		goto put_and_out;
	}
	/*
	 * This dentry should be a regular file if previous layer lookup
	 * found a metacopy dentry.
	 */
	if (last_element && d->metacopy && !FUNC3(this)) {
		d->stop = true;
		goto put_and_out;
	}
	if (!FUNC2(this)) {
		if (d->is_dir || !last_element) {
			d->stop = true;
			goto put_and_out;
		}
		err = FUNC6(this);
		if (err < 0)
			goto out_err;

		d->metacopy = err;
		d->stop = !d->metacopy;
		if (!d->metacopy || d->last)
			goto out;
	} else {
		if (FUNC11(d->sb, this)) {
			/* Caught in a trap of overlapping layers */
			err = -ELOOP;
			goto out_err;
		}

		if (last_element)
			d->is_dir = true;
		if (d->last)
			goto out;

		if (FUNC9(this)) {
			d->stop = true;
			if (last_element)
				d->opaque = true;
			goto out;
		}
	}
	err = FUNC7(this, d, prelen, post);
	if (err)
		goto out_err;
out:
	*ret = this;
	return 0;

put_and_out:
	FUNC4(this);
	this = NULL;
	goto out;

out_err:
	FUNC4(this);
	return err;
}