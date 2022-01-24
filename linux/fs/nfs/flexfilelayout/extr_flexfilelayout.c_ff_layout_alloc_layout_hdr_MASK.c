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
struct pnfs_layout_hdr {int dummy; } ;
struct nfs4_flexfile_layout {struct pnfs_layout_hdr generic_hdr; int /*<<< orphan*/  last_report_time; int /*<<< orphan*/  mirrors; int /*<<< orphan*/  error_list; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct nfs4_flexfile_layout* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct pnfs_layout_hdr *
FUNC3(struct inode *inode, gfp_t gfp_flags)
{
	struct nfs4_flexfile_layout *ffl;

	ffl = FUNC2(sizeof(*ffl), gfp_flags);
	if (ffl) {
		FUNC0(&ffl->error_list);
		FUNC0(&ffl->mirrors);
		ffl->last_report_time = FUNC1();
		return &ffl->generic_hdr;
	} else
		return NULL;
}