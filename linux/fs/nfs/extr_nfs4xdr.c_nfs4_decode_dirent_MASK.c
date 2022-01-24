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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct xdr_stream {int dummy; } ;
struct nfs_entry {int eof; int len; char const* name; int ino; int /*<<< orphan*/  cookie; int /*<<< orphan*/  prev_cookie; TYPE_1__* fattr; int /*<<< orphan*/  d_type; int /*<<< orphan*/  server; int /*<<< orphan*/  label; int /*<<< orphan*/  fh; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_2__ {int valid; int mounted_on_fileid; int fileid; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_UNKNOWN ; 
 int EAGAIN ; 
 int EBADCOOKIE ; 
 int NFS_ATTR_FATTR_FILEID ; 
 int NFS_ATTR_FATTR_MOUNTED_ON_FILEID ; 
 int NFS_ATTR_FATTR_TYPE ; 
 int FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct xdr_stream*,int /*<<< orphan*/ *,unsigned int*) ; 
 scalar_t__ FUNC3 (struct xdr_stream*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__* FUNC6 (scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC7 (struct xdr_stream*,int) ; 
 scalar_t__ xdr_zero ; 

int FUNC8(struct xdr_stream *xdr, struct nfs_entry *entry,
		       bool plus)
{
	unsigned int savep;
	uint32_t bitmap[3] = {0};
	uint32_t len;
	uint64_t new_cookie;
	__be32 *p = FUNC7(xdr, 4);
	if (FUNC5(!p))
		return -EAGAIN;
	if (*p == xdr_zero) {
		p = FUNC7(xdr, 4);
		if (FUNC5(!p))
			return -EAGAIN;
		if (*p == xdr_zero)
			return -EAGAIN;
		entry->eof = 1;
		return -EBADCOOKIE;
	}

	p = FUNC7(xdr, 12);
	if (FUNC5(!p))
		return -EAGAIN;
	p = FUNC6(p, &new_cookie);
	entry->len = FUNC0(p);

	p = FUNC7(xdr, entry->len);
	if (FUNC5(!p))
		return -EAGAIN;
	entry->name = (const char *) p;

	/*
	 * In case the server doesn't return an inode number,
	 * we fake one here.  (We don't use inode number 0,
	 * since glibc seems to choke on it...)
	 */
	entry->ino = 1;
	entry->fattr->valid = 0;

	if (FUNC1(xdr, bitmap) < 0)
		return -EAGAIN;

	if (FUNC2(xdr, &len, &savep) < 0)
		return -EAGAIN;

	if (FUNC3(xdr, bitmap, entry->fattr, entry->fh,
			NULL, entry->label, entry->server) < 0)
		return -EAGAIN;
	if (entry->fattr->valid & NFS_ATTR_FATTR_MOUNTED_ON_FILEID)
		entry->ino = entry->fattr->mounted_on_fileid;
	else if (entry->fattr->valid & NFS_ATTR_FATTR_FILEID)
		entry->ino = entry->fattr->fileid;

	entry->d_type = DT_UNKNOWN;
	if (entry->fattr->valid & NFS_ATTR_FATTR_TYPE)
		entry->d_type = FUNC4(entry->fattr->mode);

	entry->prev_cookie = entry->cookie;
	entry->cookie = new_cookie;

	return 0;
}