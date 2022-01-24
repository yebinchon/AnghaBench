#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* name; int namelen; int /*<<< orphan*/  valuelen; } ;
typedef  TYPE_2__ xfs_attr_leaf_name_remote_t ;
struct TYPE_8__ {char* nameval; int namelen; int /*<<< orphan*/  valuelen; } ;
typedef  TYPE_3__ xfs_attr_leaf_name_local_t ;
struct xfs_mount {int /*<<< orphan*/  m_attr_geo; } ;
struct xfs_buf {struct xfs_attr_leafblock* b_addr; } ;
struct xfs_attr_list_context {scalar_t__ dupcnt; int flags; scalar_t__ seen_enough; int /*<<< orphan*/  (* put_listent ) (struct xfs_attr_list_context*,int,char*,int,int) ;scalar_t__ resynch; struct attrlist_cursor_kern* cursor; TYPE_1__* dp; } ;
struct xfs_attr_leafblock {int dummy; } ;
struct xfs_attr_leaf_entry {int flags; int /*<<< orphan*/  hashval; } ;
struct xfs_attr3_icleaf_hdr {int count; } ;
struct attrlist_cursor_kern {int initted; scalar_t__ hashval; scalar_t__ offset; } ;
struct TYPE_6__ {struct xfs_mount* i_mount; } ;

/* Variables and functions */
 int ATTR_INCOMPLETE ; 
 int XFS_ATTR_INCOMPLETE ; 
 int XFS_ATTR_LOCAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_attr_list_context*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_attr_list_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_attr_list_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_attr_list_context*) ; 
 struct xfs_attr_leaf_entry* FUNC6 (struct xfs_attr_leafblock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct xfs_attr3_icleaf_hdr*,struct xfs_attr_leafblock*) ; 
 TYPE_3__* FUNC8 (struct xfs_attr_leafblock*,int) ; 
 TYPE_2__* FUNC9 (struct xfs_attr_leafblock*,int) ; 

void
FUNC10(
	struct xfs_buf			*bp,
	struct xfs_attr_list_context	*context)
{
	struct attrlist_cursor_kern	*cursor;
	struct xfs_attr_leafblock	*leaf;
	struct xfs_attr3_icleaf_hdr	ichdr;
	struct xfs_attr_leaf_entry	*entries;
	struct xfs_attr_leaf_entry	*entry;
	int				i;
	struct xfs_mount		*mp = context->dp->i_mount;

	FUNC3(context);

	leaf = bp->b_addr;
	FUNC7(mp->m_attr_geo, &ichdr, leaf);
	entries = FUNC6(leaf);

	cursor = context->cursor;
	cursor->initted = 1;

	/*
	 * Re-find our place in the leaf block if this is a new syscall.
	 */
	if (context->resynch) {
		entry = &entries[0];
		for (i = 0; i < ichdr.count; entry++, i++) {
			if (FUNC1(entry->hashval) == cursor->hashval) {
				if (cursor->offset == context->dupcnt) {
					context->dupcnt = 0;
					break;
				}
				context->dupcnt++;
			} else if (FUNC1(entry->hashval) >
					cursor->hashval) {
				context->dupcnt = 0;
				break;
			}
		}
		if (i == ichdr.count) {
			FUNC5(context);
			return;
		}
	} else {
		entry = &entries[0];
		i = 0;
	}
	context->resynch = 0;

	/*
	 * We have found our place, start copying out the new attributes.
	 */
	for (; i < ichdr.count; entry++, i++) {
		char *name;
		int namelen, valuelen;

		if (FUNC1(entry->hashval) != cursor->hashval) {
			cursor->hashval = FUNC1(entry->hashval);
			cursor->offset = 0;
		}

		if ((entry->flags & XFS_ATTR_INCOMPLETE) &&
		    !(context->flags & ATTR_INCOMPLETE))
			continue;		/* skip incomplete entries */

		if (entry->flags & XFS_ATTR_LOCAL) {
			xfs_attr_leaf_name_local_t *name_loc;

			name_loc = FUNC8(leaf, i);
			name = name_loc->nameval;
			namelen = name_loc->namelen;
			valuelen = FUNC0(name_loc->valuelen);
		} else {
			xfs_attr_leaf_name_remote_t *name_rmt;

			name_rmt = FUNC9(leaf, i);
			name = name_rmt->name;
			namelen = name_rmt->namelen;
			valuelen = FUNC1(name_rmt->valuelen);
		}

		context->put_listent(context, entry->flags,
					      name, namelen, valuelen);
		if (context->seen_enough)
			break;
		cursor->offset++;
	}
	FUNC4(context);
	return;
}