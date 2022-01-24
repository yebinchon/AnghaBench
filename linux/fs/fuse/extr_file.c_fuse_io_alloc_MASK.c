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
struct fuse_io_priv {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pages; int /*<<< orphan*/  descs; } ;
struct fuse_io_args {TYPE_1__ ap; struct fuse_io_priv* io; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_io_args*) ; 
 struct fuse_io_args* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fuse_io_args *FUNC3(struct fuse_io_priv *io,
					  unsigned int npages)
{
	struct fuse_io_args *ia;

	ia = FUNC2(sizeof(*ia), GFP_KERNEL);
	if (ia) {
		ia->io = io;
		ia->ap.pages = FUNC0(npages, GFP_KERNEL,
						&ia->ap.descs);
		if (!ia->ap.pages) {
			FUNC1(ia);
			ia = NULL;
		}
	}
	return ia;
}