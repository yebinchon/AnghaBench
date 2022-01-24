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
struct qstr {char const* name; int len; int /*<<< orphan*/  hash; } ;
struct dentry {int d_flags; int /*<<< orphan*/  d_inode; TYPE_1__* d_op; } ;
struct TYPE_2__ {int (* d_hash ) (struct dentry*,struct qstr*) ;} ;

/* Variables and functions */
 int DCACHE_OP_HASH ; 
 int EACCES ; 
 int /*<<< orphan*/  MAY_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*,char const*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dentry*,struct qstr*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(const char *name, struct dentry *base,
				 int len, struct qstr *this)
{
	this->name = name;
	this->len = len;
	this->hash = FUNC0(base, name, len);
	if (!len)
		return -EACCES;

	if (FUNC3(name[0] == '.')) {
		if (len < 2 || (len == 2 && name[1] == '.'))
			return -EACCES;
	}

	while (len--) {
		unsigned int c = *(const unsigned char *)name++;
		if (c == '/' || c == '\0')
			return -EACCES;
	}
	/*
	 * See if the low-level filesystem might want
	 * to use its own hash..
	 */
	if (base->d_flags & DCACHE_OP_HASH) {
		int err = base->d_op->d_hash(base, this);
		if (err < 0)
			return err;
	}

	return FUNC1(base->d_inode, MAY_EXEC);
}