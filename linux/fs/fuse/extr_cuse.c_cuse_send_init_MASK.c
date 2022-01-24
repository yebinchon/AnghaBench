#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct fuse_conn {int dummy; } ;
struct TYPE_10__ {int in_numargs; int out_numargs; int out_argvar; int out_pages; int /*<<< orphan*/  end; TYPE_4__* out_args; TYPE_1__* in_args; int /*<<< orphan*/  opcode; } ;
struct fuse_args_pages {int num_pages; TYPE_5__ args; TYPE_3__* descs; struct page** pages; } ;
struct TYPE_8__ {int length; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct cuse_init_args {TYPE_3__ desc; struct page* page; int /*<<< orphan*/  out; TYPE_2__ in; struct fuse_args_pages ap; } ;
struct cuse_conn {struct fuse_conn fc; } ;
struct TYPE_9__ {int size; int /*<<< orphan*/ * value; } ;
struct TYPE_6__ {int size; TYPE_2__* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CUSE_INIT ; 
 int CUSE_INIT_INFO_MAX ; 
 int /*<<< orphan*/  CUSE_UNRESTRICTED_IOCTL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUSE_KERNEL_MINOR_VERSION ; 
 int /*<<< orphan*/  FUSE_KERNEL_VERSION ; 
 int GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (int) ; 
 int /*<<< orphan*/  cuse_process_init_reply ; 
 int FUNC3 (struct fuse_conn*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cuse_init_args*) ; 
 struct cuse_init_args* FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct cuse_conn *cc)
{
	int rc;
	struct page *page;
	struct fuse_conn *fc = &cc->fc;
	struct cuse_init_args *ia;
	struct fuse_args_pages *ap;

	FUNC0(CUSE_INIT_INFO_MAX > PAGE_SIZE);

	rc = -ENOMEM;
	page = FUNC2(GFP_KERNEL | __GFP_ZERO);
	if (!page)
		goto err;

	ia = FUNC5(sizeof(*ia), GFP_KERNEL);
	if (!ia)
		goto err_free_page;

	ap = &ia->ap;
	ia->in.major = FUSE_KERNEL_VERSION;
	ia->in.minor = FUSE_KERNEL_MINOR_VERSION;
	ia->in.flags |= CUSE_UNRESTRICTED_IOCTL;
	ap->args.opcode = CUSE_INIT;
	ap->args.in_numargs = 1;
	ap->args.in_args[0].size = sizeof(ia->in);
	ap->args.in_args[0].value = &ia->in;
	ap->args.out_numargs = 2;
	ap->args.out_args[0].size = sizeof(ia->out);
	ap->args.out_args[0].value = &ia->out;
	ap->args.out_args[1].size = CUSE_INIT_INFO_MAX;
	ap->args.out_argvar = 1;
	ap->args.out_pages = 1;
	ap->num_pages = 1;
	ap->pages = &ia->page;
	ap->descs = &ia->desc;
	ia->page = page;
	ia->desc.length = ap->args.out_args[1].size;
	ap->args.end = cuse_process_init_reply;

	rc = FUNC3(fc, &ap->args, GFP_KERNEL);
	if (rc) {
		FUNC4(ia);
err_free_page:
		FUNC1(page);
	}
err:
	return rc;
}