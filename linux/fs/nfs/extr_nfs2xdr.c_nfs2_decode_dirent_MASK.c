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
struct xdr_stream {int dummy; } ;
struct nfs_entry {int eof; int /*<<< orphan*/  d_type; void* cookie; void* prev_cookie; int /*<<< orphan*/  len; int /*<<< orphan*/  name; void* ino; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  DT_UNKNOWN ; 
 int EAGAIN ; 
 int EBADCOOKIE ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,int) ; 
 scalar_t__ xdr_zero ; 

int FUNC4(struct xdr_stream *xdr, struct nfs_entry *entry,
		       bool plus)
{
	__be32 *p;
	int error;

	p = FUNC3(xdr, 4);
	if (FUNC2(!p))
		return -EAGAIN;
	if (*p++ == xdr_zero) {
		p = FUNC3(xdr, 4);
		if (FUNC2(!p))
			return -EAGAIN;
		if (*p++ == xdr_zero)
			return -EAGAIN;
		entry->eof = 1;
		return -EBADCOOKIE;
	}

	p = FUNC3(xdr, 4);
	if (FUNC2(!p))
		return -EAGAIN;
	entry->ino = FUNC0(p);

	error = FUNC1(xdr, &entry->name, &entry->len);
	if (FUNC2(error))
		return error;

	/*
	 * The type (size and byte order) of nfscookie isn't defined in
	 * RFC 1094.  This implementation assumes that it's an XDR uint32.
	 */
	entry->prev_cookie = entry->cookie;
	p = FUNC3(xdr, 4);
	if (FUNC2(!p))
		return -EAGAIN;
	entry->cookie = FUNC0(p);

	entry->d_type = DT_UNKNOWN;

	return 0;
}