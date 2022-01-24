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
struct parallel_io {struct nfs_pgio_header* data; } ;
struct nfs_pgio_header {int /*<<< orphan*/  lseg; int /*<<< orphan*/  pnfs_error; } ;
struct bio {scalar_t__ bi_status; struct parallel_io* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_pgio_header*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct parallel_io*) ; 

__attribute__((used)) static void FUNC4(struct bio *bio)
{
	struct parallel_io *par = bio->bi_private;

	if (bio->bi_status) {
		struct nfs_pgio_header *header = par->data;

		if (!header->pnfs_error)
			header->pnfs_error = -EIO;
		FUNC2(header->lseg);
		FUNC1(header, false);
	}

	FUNC0(bio);
	FUNC3(par);
}