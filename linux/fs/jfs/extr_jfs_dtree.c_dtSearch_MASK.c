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
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct super_block {int dummy; } ;
struct metapage {int dummy; } ;
struct ldtentry {int /*<<< orphan*/  inumber; } ;
struct inode {struct super_block* i_sb; } ;
struct component_name {int /*<<< orphan*/  name; int /*<<< orphan*/  namlen; } ;
struct btstack {int nsplit; struct btframe* top; } ;
struct btframe {int index; struct metapage* mp; void* bn; } ;
typedef  size_t s8 ;
typedef  void* s64 ;
typedef  int /*<<< orphan*/  pxd_t ;
typedef  scalar_t__ ino_t ;
struct TYPE_8__ {int nextindex; int flag; } ;
struct TYPE_9__ {int /*<<< orphan*/ * slot; TYPE_1__ header; } ;
typedef  TYPE_2__ dtpage_t ;
struct TYPE_10__ {int mntflag; int l2bsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btstack*) ; 
 int BT_LEAF ; 
 int /*<<< orphan*/  FUNC1 (struct btstack*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btstack*) ; 
 scalar_t__ FUNC3 (struct btstack*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,void*,struct metapage*,int,TYPE_2__*,int) ; 
 size_t* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct metapage*) ; 
 int EEXIST ; 
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ESTALE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int JFS_CREATE ; 
 int JFS_LOOKUP ; 
 scalar_t__ JFS_NAME_MAX ; 
 int JFS_OS2 ; 
 int JFS_REMOVE ; 
 int JFS_RENAME ; 
 TYPE_5__* FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct component_name*,TYPE_2__*,size_t,int) ; 
 int /*<<< orphan*/  FUNC11 (struct component_name*) ; 
 int FUNC12 (struct component_name*,TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 

int FUNC18(struct inode *ip, struct component_name * key, ino_t * data,
	     struct btstack * btstack, int flag)
{
	int rc = 0;
	int cmp = 1;		/* init for empty page */
	s64 bn;
	struct metapage *mp;
	dtpage_t *p;
	s8 *stbl;
	int base, index, lim;
	struct btframe *btsp;
	pxd_t *pxd;
	int psize = 288;	/* initial in-line directory */
	ino_t inumber;
	struct component_name ciKey;
	struct super_block *sb = ip->i_sb;

	ciKey.name = FUNC15(JFS_NAME_MAX + 1, sizeof(wchar_t),
				   GFP_NOFS);
	if (!ciKey.name) {
		rc = -ENOMEM;
		goto dtSearch_Exit2;
	}


	/* uppercase search key for c-i directory */
	FUNC8(ciKey.name, key->name);
	ciKey.namlen = key->namlen;

	/* only uppercase if case-insensitive support is on */
	if ((FUNC7(sb)->mntflag & JFS_OS2) == JFS_OS2) {
		FUNC11(&ciKey);
	}
	FUNC0(btstack);	/* reset stack */

	/* init level count for max pages to split */
	btstack->nsplit = 1;

	/*
	 *	search down tree from root:
	 *
	 * between two consecutive entries of <Ki, Pi> and <Kj, Pj> of
	 * internal page, child page Pi contains entry with k, Ki <= K < Kj.
	 *
	 * if entry with search key K is not found
	 * internal page search find the entry with largest key Ki
	 * less than K which point to the child page to search;
	 * leaf page search find the entry with smallest key Kj
	 * greater than K so that the returned index is the position of
	 * the entry to be shifted right for insertion of new entry.
	 * for empty tree, search key is greater than any key of the tree.
	 *
	 * by convention, root bn = 0.
	 */
	for (bn = 0;;) {
		/* get/pin the page to search */
		FUNC4(ip, bn, mp, psize, p, rc);
		if (rc)
			goto dtSearch_Exit1;

		/* get sorted entry table of the page */
		stbl = FUNC5(p);

		/*
		 * binary search with search key K on the current page.
		 */
		for (base = 0, lim = p->header.nextindex; lim; lim >>= 1) {
			index = base + (lim >> 1);

			if (p->header.flag & BT_LEAF) {
				/* uppercase leaf name to compare */
				cmp =
				    FUNC10(&ciKey, p, stbl[index],
					      FUNC7(sb)->mntflag);
			} else {
				/* router key is in uppercase */

				cmp = FUNC12(&ciKey, p, stbl[index]);


			}
			if (cmp == 0) {
				/*
				 *	search hit
				 */
				/* search hit - leaf page:
				 * return the entry found
				 */
				if (p->header.flag & BT_LEAF) {
					inumber = FUNC16(
			((struct ldtentry *) & p->slot[stbl[index]])->inumber);

					/*
					 * search for JFS_LOOKUP
					 */
					if (flag == JFS_LOOKUP) {
						*data = inumber;
						rc = 0;
						goto out;
					}

					/*
					 * search for JFS_CREATE
					 */
					if (flag == JFS_CREATE) {
						*data = inumber;
						rc = -EEXIST;
						goto out;
					}

					/*
					 * search for JFS_REMOVE or JFS_RENAME
					 */
					if ((flag == JFS_REMOVE ||
					     flag == JFS_RENAME) &&
					    *data != inumber) {
						rc = -ESTALE;
						goto out;
					}

					/*
					 * JFS_REMOVE|JFS_FINDDIR|JFS_RENAME
					 */
					/* save search result */
					*data = inumber;
					btsp = btstack->top;
					btsp->bn = bn;
					btsp->index = index;
					btsp->mp = mp;

					rc = 0;
					goto dtSearch_Exit1;
				}

				/* search hit - internal page:
				 * descend/search its child page
				 */
				goto getChild;
			}

			if (cmp > 0) {
				base = index + 1;
				--lim;
			}
		}

		/*
		 *	search miss
		 *
		 * base is the smallest index with key (Kj) greater than
		 * search key (K) and may be zero or (maxindex + 1) index.
		 */
		/*
		 * search miss - leaf page
		 *
		 * return location of entry (base) where new entry with
		 * search key K is to be inserted.
		 */
		if (p->header.flag & BT_LEAF) {
			/*
			 * search for JFS_LOOKUP, JFS_REMOVE, or JFS_RENAME
			 */
			if (flag == JFS_LOOKUP || flag == JFS_REMOVE ||
			    flag == JFS_RENAME) {
				rc = -ENOENT;
				goto out;
			}

			/*
			 * search for JFS_CREATE|JFS_FINDDIR:
			 *
			 * save search result
			 */
			*data = 0;
			btsp = btstack->top;
			btsp->bn = bn;
			btsp->index = base;
			btsp->mp = mp;

			rc = 0;
			goto dtSearch_Exit1;
		}

		/*
		 * search miss - internal page
		 *
		 * if base is non-zero, decrement base by one to get the parent
		 * entry of the child page to search.
		 */
		index = base ? base - 1 : base;

		/*
		 * go down to child page
		 */
	      getChild:
		/* update max. number of pages to split */
		if (FUNC3(btstack)) {
			/* Something's corrupted, mark filesystem dirty so
			 * chkdsk will fix it.
			 */
			FUNC13(sb, "stack overrun!\n");
			FUNC2(btstack);
			rc = -EIO;
			goto out;
		}
		btstack->nsplit++;

		/* push (bn, index) of the parent page/entry */
		FUNC1(btstack, bn, index);

		/* get the child page block number */
		pxd = (pxd_t *) & p->slot[stbl[index]];
		bn = FUNC9(pxd);
		psize = FUNC17(pxd) << FUNC7(ip->i_sb)->l2bsize;

		/* unpin the parent page */
		FUNC6(mp);
	}

      out:
	FUNC6(mp);

      dtSearch_Exit1:

	FUNC14(ciKey.name);

      dtSearch_Exit2:

	return rc;
}