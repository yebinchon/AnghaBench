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
struct nfs_pgio_header {int /*<<< orphan*/  inode; int /*<<< orphan*/ * dreq; int /*<<< orphan*/ * ds_clp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FMODE_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
bool FUNC1(struct nfs_pgio_header *hdr)
{
	/* Don't request attributes for pNFS or O_DIRECT writes */
	if (hdr->ds_clp != NULL || hdr->dreq != NULL)
		return false;
	/* Otherwise, request attributes if and only if we don't hold
	 * a delegation
	 */
	return FUNC0(hdr->inode, FMODE_READ) == 0;
}