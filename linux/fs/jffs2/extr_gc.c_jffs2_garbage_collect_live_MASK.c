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
typedef  scalar_t__ uint32_t ;
struct jffs2_sb_info {int /*<<< orphan*/  erase_completion_lock; struct jffs2_eraseblock* gcblock; } ;
struct jffs2_raw_node_ref {int dummy; } ;
struct jffs2_node_frag {scalar_t__ ofs; scalar_t__ size; struct jffs2_full_dnode* node; } ;
struct jffs2_inode_info {int /*<<< orphan*/  sem; TYPE_1__* inocache; struct jffs2_full_dirent* dents; int /*<<< orphan*/  fragtree; struct jffs2_full_dnode* metadata; } ;
struct jffs2_full_dnode {scalar_t__ frags; struct jffs2_raw_node_ref* raw; } ;
struct jffs2_full_dirent {scalar_t__ ino; struct jffs2_raw_node_ref* raw; struct jffs2_full_dirent* next; } ;
struct jffs2_eraseblock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ino; struct jffs2_raw_node_ref* nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EBADFD ; 
 scalar_t__ PAGE_SHIFT ; 
 scalar_t__ REF_PRISTINE ; 
 struct jffs2_node_frag* FUNC1 (int /*<<< orphan*/ *) ; 
 struct jffs2_node_frag* FUNC2 (struct jffs2_node_frag*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct jffs2_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct jffs2_sb_info*,struct jffs2_eraseblock*,struct jffs2_inode_info*,struct jffs2_full_dirent*) ; 
 int FUNC6 (struct jffs2_sb_info*,struct jffs2_eraseblock*,struct jffs2_inode_info*,struct jffs2_full_dirent*) ; 
 int FUNC7 (struct jffs2_sb_info*,struct jffs2_eraseblock*,struct jffs2_inode_info*,struct jffs2_full_dnode*,scalar_t__,scalar_t__) ; 
 int FUNC8 (struct jffs2_sb_info*,struct jffs2_eraseblock*,struct jffs2_inode_info*,struct jffs2_full_dnode*,scalar_t__,scalar_t__) ; 
 int FUNC9 (struct jffs2_sb_info*,struct jffs2_eraseblock*,struct jffs2_inode_info*,struct jffs2_full_dnode*) ; 
 int FUNC10 (struct jffs2_sb_info*,TYPE_1__*,struct jffs2_raw_node_ref*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 scalar_t__ FUNC14 (struct jffs2_raw_node_ref*) ; 
 scalar_t__ FUNC15 (struct jffs2_raw_node_ref*) ; 
 int /*<<< orphan*/  FUNC16 (struct jffs2_raw_node_ref*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct jffs2_sb_info *c,  struct jffs2_eraseblock *jeb,
				      struct jffs2_raw_node_ref *raw, struct jffs2_inode_info *f)
{
	struct jffs2_node_frag *frag;
	struct jffs2_full_dnode *fn = NULL;
	struct jffs2_full_dirent *fd;
	uint32_t start = 0, end = 0, nrfrags = 0;
	int ret = 0;

	FUNC11(&f->sem);

	/* Now we have the lock for this inode. Check that it's still the one at the head
	   of the list. */

	FUNC17(&c->erase_completion_lock);

	if (c->gcblock != jeb) {
		FUNC18(&c->erase_completion_lock);
		FUNC3(1, "GC block is no longer gcblock. Restart\n");
		goto upnout;
	}
	if (FUNC15(raw)) {
		FUNC18(&c->erase_completion_lock);
		FUNC3(1, "node to be GC'd was obsoleted in the meantime.\n");
		/* They'll call again */
		goto upnout;
	}
	FUNC18(&c->erase_completion_lock);

	/* OK. Looks safe. And nobody can get us now because we have the semaphore. Move the block */
	if (f->metadata && f->metadata->raw == raw) {
		fn = f->metadata;
		ret = FUNC9(c, jeb, f, fn);
		goto upnout;
	}

	/* FIXME. Read node and do lookup? */
	for (frag = FUNC1(&f->fragtree); frag; frag = FUNC2(frag)) {
		if (frag->node && frag->node->raw == raw) {
			fn = frag->node;
			end = frag->ofs + frag->size;
			if (!nrfrags++)
				start = frag->ofs;
			if (nrfrags == frag->node->frags)
				break; /* We've found them all */
		}
	}
	if (fn) {
		if (FUNC14(raw) == REF_PRISTINE) {
			ret = FUNC10(c, f->inocache, raw);
			if (!ret) {
				/* Urgh. Return it sensibly. */
				frag->node->raw = f->inocache->nodes;
			}
			if (ret != -EBADFD)
				goto upnout;
		}
		/* We found a datanode. Do the GC */
		if((start >> PAGE_SHIFT) < ((end-1) >> PAGE_SHIFT)) {
			/* It crosses a page boundary. Therefore, it must be a hole. */
			ret = FUNC8(c, jeb, f, fn, start, end);
		} else {
			/* It could still be a hole. But we GC the page this way anyway */
			ret = FUNC7(c, jeb, f, fn, start, end);
		}
		goto upnout;
	}

	/* Wasn't a dnode. Try dirent */
	for (fd = f->dents; fd; fd=fd->next) {
		if (fd->raw == raw)
			break;
	}

	if (fd && fd->ino) {
		ret = FUNC6(c, jeb, f, fd);
	} else if (fd) {
		ret = FUNC5(c, jeb, f, fd);
	} else {
		FUNC13("Raw node at 0x%08x wasn't in node lists for ino #%u\n",
			FUNC16(raw), f->inocache->ino);
		if (FUNC15(raw)) {
			FUNC13("But it's obsolete so we don't mind too much\n");
		} else {
			FUNC4(c, FUNC16(raw));
			FUNC0();
		}
	}
 upnout:
	FUNC12(&f->sem);

	return ret;
}