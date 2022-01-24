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
struct nfs_rw_ops {struct nfs_pgio_header* (* rw_alloc_header ) () ;} ;
struct nfs_pgio_header {struct nfs_rw_ops const* rw_ops; int /*<<< orphan*/  pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nfs_pgio_header* FUNC1 () ; 

struct nfs_pgio_header *FUNC2(const struct nfs_rw_ops *ops)
{
	struct nfs_pgio_header *hdr = ops->rw_alloc_header();

	if (hdr) {
		FUNC0(&hdr->pages);
		hdr->rw_ops = ops;
	}
	return hdr;
}