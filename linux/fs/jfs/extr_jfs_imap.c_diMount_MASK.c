#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct metapage {scalar_t__ data; } ;
struct inomap {struct inode* im_ipimap; TYPE_1__* im_agctl; void* im_l2nbperiext; void* im_nbperiext; int /*<<< orphan*/  im_numfree; int /*<<< orphan*/  im_numinos; void* im_nextiag; void* im_freeiag; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dinomap_disk {TYPE_2__* in_agctl; int /*<<< orphan*/  in_l2nbperiext; int /*<<< orphan*/  in_nbperiext; int /*<<< orphan*/  in_numfree; int /*<<< orphan*/  in_numinos; int /*<<< orphan*/  in_nextiag; int /*<<< orphan*/  in_freeiag; } ;
struct TYPE_8__ {struct inomap* i_imap; } ;
struct TYPE_7__ {int l2nbperpage; } ;
struct TYPE_6__ {int /*<<< orphan*/  numfree; int /*<<< orphan*/  numinos; int /*<<< orphan*/  extfree; int /*<<< orphan*/  inofree; } ;
struct TYPE_5__ {void* numfree; void* numinos; void* extfree; void* inofree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inomap*,int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct inomap*) ; 
 int IMAPBLKNO ; 
 TYPE_4__* FUNC2 (struct inode*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int MAXAG ; 
 int /*<<< orphan*/  PSIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct inomap*) ; 
 struct inomap* FUNC7 (int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 struct metapage* FUNC9 (struct inode*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct metapage*) ; 

int FUNC11(struct inode *ipimap)
{
	struct inomap *imap;
	struct metapage *mp;
	int index;
	struct dinomap_disk *dinom_le;

	/*
	 * allocate/initialize the in-memory inode map control structure
	 */
	/* allocate the in-memory inode map control structure. */
	imap = FUNC7(sizeof(struct inomap), GFP_KERNEL);
	if (imap == NULL) {
		FUNC5("diMount: kmalloc returned NULL!");
		return -ENOMEM;
	}

	/* read the on-disk inode map control structure. */

	mp = FUNC9(ipimap,
			   IMAPBLKNO << FUNC3(ipimap->i_sb)->l2nbperpage,
			   PSIZE, 0);
	if (mp == NULL) {
		FUNC6(imap);
		return -EIO;
	}

	/* copy the on-disk version to the in-memory version. */
	dinom_le = (struct dinomap_disk *) mp->data;
	imap->im_freeiag = FUNC8(dinom_le->in_freeiag);
	imap->im_nextiag = FUNC8(dinom_le->in_nextiag);
	FUNC4(&imap->im_numinos, FUNC8(dinom_le->in_numinos));
	FUNC4(&imap->im_numfree, FUNC8(dinom_le->in_numfree));
	imap->im_nbperiext = FUNC8(dinom_le->in_nbperiext);
	imap->im_l2nbperiext = FUNC8(dinom_le->in_l2nbperiext);
	for (index = 0; index < MAXAG; index++) {
		imap->im_agctl[index].inofree =
		    FUNC8(dinom_le->in_agctl[index].inofree);
		imap->im_agctl[index].extfree =
		    FUNC8(dinom_le->in_agctl[index].extfree);
		imap->im_agctl[index].numinos =
		    FUNC8(dinom_le->in_agctl[index].numinos);
		imap->im_agctl[index].numfree =
		    FUNC8(dinom_le->in_agctl[index].numfree);
	}

	/* release the buffer. */
	FUNC10(mp);

	/*
	 * allocate/initialize inode allocation map locks
	 */
	/* allocate and init iag free list lock */
	FUNC1(imap);

	/* allocate and init ag list locks */
	for (index = 0; index < MAXAG; index++) {
		FUNC0(imap, index);
	}

	/* bind the inode map inode and inode map control structure
	 * to each other.
	 */
	imap->im_ipimap = ipimap;
	FUNC2(ipimap)->i_imap = imap;

	return (0);
}