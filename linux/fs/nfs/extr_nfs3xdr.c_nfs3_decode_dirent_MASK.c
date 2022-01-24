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
typedef  int /*<<< orphan*/  u64 ;
struct xdr_stream {int dummy; } ;
struct user_namespace {int dummy; } ;
struct nfs_entry {int eof; scalar_t__ ino; int /*<<< orphan*/  cookie; int /*<<< orphan*/  prev_cookie; int /*<<< orphan*/  fh; TYPE_2__* fattr; int /*<<< orphan*/  d_type; int /*<<< orphan*/  len; int /*<<< orphan*/  name; TYPE_1__* server; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_4__ {int valid; scalar_t__ fileid; scalar_t__ mounted_on_fileid; int /*<<< orphan*/  mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_UNKNOWN ; 
 int E2BIG ; 
 int EAGAIN ; 
 int EBADCOOKIE ; 
 int NFS_ATTR_FATTR_MOUNTED_ON_FILEID ; 
 int NFS_ATTR_FATTR_V3 ; 
 int FUNC0 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct xdr_stream*,scalar_t__*) ; 
 int FUNC2 (struct xdr_stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct xdr_stream*,TYPE_2__*,struct user_namespace*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct user_namespace* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__* FUNC9 (struct xdr_stream*,int) ; 
 scalar_t__ xdr_zero ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct xdr_stream *xdr, struct nfs_entry *entry,
		       bool plus)
{
	struct user_namespace *userns = FUNC7(entry->server->client);
	struct nfs_entry old = *entry;
	__be32 *p;
	int error;
	u64 new_cookie;

	p = FUNC9(xdr, 4);
	if (FUNC8(!p))
		return -EAGAIN;
	if (*p == xdr_zero) {
		p = FUNC9(xdr, 4);
		if (FUNC8(!p))
			return -EAGAIN;
		if (*p == xdr_zero)
			return -EAGAIN;
		entry->eof = 1;
		return -EBADCOOKIE;
	}

	error = FUNC1(xdr, &entry->ino);
	if (FUNC8(error))
		return error;

	error = FUNC2(xdr, &entry->name, &entry->len);
	if (FUNC8(error))
		return error;

	error = FUNC0(xdr, &new_cookie);
	if (FUNC8(error))
		return error;

	entry->d_type = DT_UNKNOWN;

	if (plus) {
		entry->fattr->valid = 0;
		error = FUNC4(xdr, entry->fattr, userns);
		if (FUNC8(error))
			return error;
		if (entry->fattr->valid & NFS_ATTR_FATTR_V3)
			entry->d_type = FUNC6(entry->fattr->mode);

		if (entry->fattr->fileid != entry->ino) {
			entry->fattr->mounted_on_fileid = entry->ino;
			entry->fattr->valid |= NFS_ATTR_FATTR_MOUNTED_ON_FILEID;
		}

		/* In fact, a post_op_fh3: */
		p = FUNC9(xdr, 4);
		if (FUNC8(!p))
			return -EAGAIN;
		if (*p != xdr_zero) {
			error = FUNC3(xdr, entry->fh);
			if (FUNC8(error)) {
				if (error == -E2BIG)
					goto out_truncated;
				return error;
			}
		} else
			FUNC10(entry->fh);
	}

	entry->prev_cookie = entry->cookie;
	entry->cookie = new_cookie;

	return 0;

out_truncated:
	FUNC5("NFS: directory entry contains invalid file handle\n");
	*entry = old;
	return -EAGAIN;
}