#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xdr_stream {int dummy; } ;
struct path {scalar_t__ dentry; TYPE_1__* mnt; } ;
struct TYPE_4__ {unsigned int len; int /*<<< orphan*/  name; } ;
struct dentry {int /*<<< orphan*/  d_lock; TYPE_2__ d_name; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_3__ {scalar_t__ mnt_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct dentry* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct path*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry**) ; 
 struct dentry** FUNC6 (struct dentry**,int,int /*<<< orphan*/ ) ; 
 scalar_t__ nfserr_jukebox ; 
 scalar_t__ nfserr_resource ; 
 scalar_t__ FUNC7 (struct path*,struct path const*) ; 
 int /*<<< orphan*/  FUNC8 (struct path*) ; 
 int /*<<< orphan*/  FUNC9 (struct path*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC12 (scalar_t__*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__* FUNC13 (struct xdr_stream*,unsigned int) ; 

__attribute__((used)) static __be32 FUNC14(struct xdr_stream *xdr,
				const struct path *root,
				const struct path *path)
{
	struct path cur = *path;
	__be32 *p;
	struct dentry **components = NULL;
	unsigned int ncomponents = 0;
	__be32 err = nfserr_jukebox;

	FUNC2("nfsd4_encode_components(");

	FUNC8(&cur);
	/* First walk the path up to the nfsd root, and store the
	 * dentries/path components in an array.
	 */
	for (;;) {
		if (FUNC7(&cur, root))
			break;
		if (cur.dentry == cur.mnt->mnt_root) {
			if (FUNC4(&cur))
				continue;
			goto out_free;
		}
		if ((ncomponents & 15) == 0) {
			struct dentry **new;
			new = FUNC6(components,
					sizeof(*new) * (ncomponents + 16),
					GFP_KERNEL);
			if (!new)
				goto out_free;
			components = new;
		}
		components[ncomponents++] = cur.dentry;
		cur.dentry = FUNC1(cur.dentry);
	}
	err = nfserr_resource;
	p = FUNC13(xdr, 4);
	if (!p)
		goto out_free;
	*p++ = FUNC0(ncomponents);

	while (ncomponents) {
		struct dentry *dentry = components[ncomponents - 1];
		unsigned int len;

		FUNC10(&dentry->d_lock);
		len = dentry->d_name.len;
		p = FUNC13(xdr, len + 4);
		if (!p) {
			FUNC11(&dentry->d_lock);
			goto out_free;
		}
		p = FUNC12(p, dentry->d_name.name, len);
		FUNC2("/%pd", dentry);
		FUNC11(&dentry->d_lock);
		FUNC3(dentry);
		ncomponents--;
	}

	err = 0;
out_free:
	FUNC2(")\n");
	while (ncomponents)
		FUNC3(components[--ncomponents]);
	FUNC5(components);
	FUNC9(&cur);
	return err;
}