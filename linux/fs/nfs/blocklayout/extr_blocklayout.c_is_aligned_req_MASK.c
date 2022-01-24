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
struct nfs_pageio_descriptor {int /*<<< orphan*/  pg_inode; int /*<<< orphan*/ * pg_dreq; } ;
struct nfs_page {scalar_t__ wb_offset; scalar_t__ wb_bytes; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct nfs_page*) ; 

__attribute__((used)) static bool
FUNC3(struct nfs_pageio_descriptor *pgio,
		struct nfs_page *req, unsigned int alignment, bool is_write)
{
	/*
	 * Always accept buffered writes, higher layers take care of the
	 * right alignment.
	 */
	if (pgio->pg_dreq == NULL)
		return true;

	if (!FUNC0(req->wb_offset, alignment))
		return false;

	if (FUNC0(req->wb_bytes, alignment))
		return true;

	if (is_write &&
	    (FUNC2(req) + req->wb_bytes == FUNC1(pgio->pg_inode))) {
		/*
		 * If the write goes up to the inode size, just write
		 * the full page.  Data past the inode size is
		 * guaranteed to be zeroed by the higher level client
		 * code, and this behaviour is mandated by RFC 5663
		 * section 2.3.2.
		 */
		return true;
	}

	return false;
}