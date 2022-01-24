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
struct xattr_handler {char* name; scalar_t__ prefix; int /*<<< orphan*/  (* list ) (struct dentry*) ;} ;
struct jffs2_xattr_ref {struct jffs2_xattr_ref* next; struct jffs2_xattr_datum* xd; struct jffs2_inode_cache* ic; } ;
struct jffs2_xattr_datum {char const* xname; size_t name_len; int /*<<< orphan*/  xprefix; } ;
struct jffs2_sb_info {int /*<<< orphan*/  xattr_sem; } ;
struct jffs2_inode_info {struct jffs2_inode_cache* inocache; } ;
struct jffs2_inode_cache {struct jffs2_xattr_ref* xref; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t ERANGE ; 
 struct jffs2_inode_info* FUNC1 (struct inode*) ; 
 struct jffs2_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (struct jffs2_sb_info*,struct jffs2_inode_cache*) ; 
 struct inode* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct jffs2_sb_info*,struct jffs2_xattr_ref*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 size_t FUNC8 (struct jffs2_sb_info*,struct jffs2_xattr_datum*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,size_t) ; 
 size_t FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct xattr_handler* FUNC15 (int /*<<< orphan*/ ) ; 

ssize_t FUNC16(struct dentry *dentry, char *buffer, size_t size)
{
	struct inode *inode = FUNC4(dentry);
	struct jffs2_inode_info *f = FUNC1(inode);
	struct jffs2_sb_info *c = FUNC2(inode->i_sb);
	struct jffs2_inode_cache *ic = f->inocache;
	struct jffs2_xattr_ref *ref, **pref;
	struct jffs2_xattr_datum *xd;
	const struct xattr_handler *xhandle;
	const char *prefix;
	ssize_t prefix_len, len, rc;
	int retry = 0;

	rc = FUNC3(c, ic);
	if (FUNC12(rc))
		return rc;

	FUNC6(&c->xattr_sem);
 retry:
	len = 0;
	for (ref=ic->xref, pref=&ic->xref; ref; pref=&ref->next, ref=ref->next) {
		FUNC0(ref->ic != ic);
		xd = ref->xd;
		if (!xd->xname) {
			/* xdatum is unchached */
			if (!retry) {
				retry = 1;
				FUNC13(&c->xattr_sem);
				FUNC7(&c->xattr_sem);
				goto retry;
			} else {
				rc = FUNC8(c, xd);
				if (FUNC12(rc > 0)) {
					*pref = ref->next;
					FUNC5(c, ref);
					goto retry;
				} else if (FUNC12(rc < 0))
					goto out;
			}
		}
		xhandle = FUNC15(xd->xprefix);
		if (!xhandle || (xhandle->list && !xhandle->list(dentry)))
			continue;
		prefix = xhandle->prefix ?: xhandle->name;
		prefix_len = FUNC10(prefix);
		rc = prefix_len + xd->name_len + 1;

		if (buffer) {
			if (rc > size - len) {
				rc = -ERANGE;
				goto out;
			}
			FUNC9(buffer, prefix, prefix_len);
			buffer += prefix_len;
			FUNC9(buffer, xd->xname, xd->name_len);
			buffer += xd->name_len;
			*buffer++ = 0;
		}
		len += rc;
	}
	rc = len;
 out:
	if (!retry) {
		FUNC13(&c->xattr_sem);
	} else {
		FUNC14(&c->xattr_sem);
	}
	return rc;
}