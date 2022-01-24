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
struct imapper {int dummy; } ;
struct daio_mgr {int init_imap_added; int /*<<< orphan*/  imap_lock; int /*<<< orphan*/  init_imap; int /*<<< orphan*/  imappers; } ;

/* Variables and functions */
 int /*<<< orphan*/  daio_map_op ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct daio_mgr*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct imapper*,int /*<<< orphan*/ ,struct daio_mgr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct daio_mgr *mgr, struct imapper *entry)
{
	unsigned long flags;
	int err;

	FUNC3(&mgr->imap_lock, flags);
	err = FUNC1(&mgr->imappers, entry, daio_map_op, mgr);
	if (FUNC2(&mgr->imappers)) {
		FUNC0(&mgr->imappers, mgr->init_imap,
							daio_map_op, mgr);
		mgr->init_imap_added = 1;
	}
	FUNC4(&mgr->imap_lock, flags);

	return err;
}