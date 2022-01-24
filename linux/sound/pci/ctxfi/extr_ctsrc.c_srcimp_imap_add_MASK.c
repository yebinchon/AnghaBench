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
struct srcimp_mgr {int /*<<< orphan*/  imap_lock; int /*<<< orphan*/  imappers; scalar_t__ init_imap_added; int /*<<< orphan*/  init_imap; } ;
struct imapper {scalar_t__ addr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct imapper*,int /*<<< orphan*/ ,struct srcimp_mgr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct srcimp_mgr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  srcimp_map_op ; 

__attribute__((used)) static int FUNC4(struct srcimp_mgr *mgr, struct imapper *entry)
{
	unsigned long flags;
	int err;

	FUNC2(&mgr->imap_lock, flags);
	if ((0 == entry->addr) && (mgr->init_imap_added)) {
		FUNC1(&mgr->imappers,
				    mgr->init_imap, srcimp_map_op, mgr);
		mgr->init_imap_added = 0;
	}
	err = FUNC0(&mgr->imappers, entry, srcimp_map_op, mgr);
	FUNC3(&mgr->imap_lock, flags);

	return err;
}