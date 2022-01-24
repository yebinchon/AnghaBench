#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int wchar_t ;
struct ldtentry {int next; int namlen; int /*<<< orphan*/ * name; } ;
struct idtentry {int next; int namlen; int /*<<< orphan*/ * name; } ;
struct dtslot {int next; int /*<<< orphan*/ * name; } ;
struct component_name {int* name; int namlen; } ;
struct TYPE_4__ {int flag; } ;
struct TYPE_5__ {int /*<<< orphan*/ * slot; TYPE_1__ header; } ;
typedef  TYPE_2__ dtpage_t ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int BT_LEAF ; 
 int DTIHDRDATALEN ; 
 int DTLHDRDATALEN ; 
 int DTLHDRDATALEN_LEGACY ; 
 int DTSLOTDATALEN ; 
 int JFS_DIR_INDEX ; 
 int JFS_OS2 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct component_name * key,	/* search key */
		     dtpage_t * p,	/* directory page */
		     int si,	/* entry slot index */
		     int flag)
{
	wchar_t *kname, x;
	__le16 *name;
	int klen, namlen, len, rc;
	struct ldtentry *lh;
	struct idtentry *ih;
	struct dtslot *t;
	int i;

	/*
	 * force the left-most key on internal pages, at any level of
	 * the tree, to be less than any search key.
	 * this obviates having to update the leftmost key on an internal
	 * page when the user inserts a new key in the tree smaller than
	 * anything that has been stored.
	 *
	 * (? if/when dtSearch() narrows down to 1st entry (index = 0),
	 * at any internal page at any level of the tree,
	 * it descends to child of the entry anyway -
	 * ? make the entry as min size dummy entry)
	 *
	 * if (e->index == 0 && h->prevpg == P_INVALID && !(h->flags & BT_LEAF))
	 * return (1);
	 */

	kname = key->name;
	klen = key->namlen;

	/*
	 * leaf page entry
	 */
	if (p->header.flag & BT_LEAF) {
		lh = (struct ldtentry *) & p->slot[si];
		si = lh->next;
		name = lh->name;
		namlen = lh->namlen;
		if (flag & JFS_DIR_INDEX)
			len = FUNC2(namlen, DTLHDRDATALEN);
		else
			len = FUNC2(namlen, DTLHDRDATALEN_LEGACY);
	}
	/*
	 * internal page entry
	 */
	else {
		ih = (struct idtentry *) & p->slot[si];
		si = ih->next;
		name = ih->name;
		namlen = ih->namlen;
		len = FUNC2(namlen, DTIHDRDATALEN);
	}

	/* compare with head/only segment */
	len = FUNC2(klen, len);
	for (i = 0; i < len; i++, kname++, name++) {
		/* only uppercase if case-insensitive support is on */
		if ((flag & JFS_OS2) == JFS_OS2)
			x = FUNC0(FUNC1(*name));
		else
			x = FUNC1(*name);
		if ((rc = *kname - x))
			return rc;
	}

	klen -= len;
	namlen -= len;

	/* compare with additional segment(s) */
	while (klen > 0 && namlen > 0) {
		/* compare with next name segment */
		t = (struct dtslot *) & p->slot[si];
		len = FUNC2(namlen, DTSLOTDATALEN);
		len = FUNC2(klen, len);
		name = t->name;
		for (i = 0; i < len; i++, kname++, name++) {
			/* only uppercase if case-insensitive support is on */
			if ((flag & JFS_OS2) == JFS_OS2)
				x = FUNC0(FUNC1(*name));
			else
				x = FUNC1(*name);

			if ((rc = *kname - x))
				return rc;
		}

		klen -= len;
		namlen -= len;
		si = t->next;
	}

	return (klen - namlen);
}