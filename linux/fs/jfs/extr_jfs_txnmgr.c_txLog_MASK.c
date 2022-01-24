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
struct tlock {int type; struct inode* ip; int /*<<< orphan*/  flag; scalar_t__ next; } ;
struct tblock {scalar_t__ next; } ;
struct TYPE_5__ {void* inode; void* fileset; } ;
struct TYPE_6__ {TYPE_1__ redopage; } ;
struct lrd {TYPE_2__ log; void* aggregate; } ;
struct jfs_log {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct commit {struct lrd lrd; } ;
typedef  scalar_t__ lid_t ;
struct TYPE_8__ {int /*<<< orphan*/  fileset; } ;
struct TYPE_7__ {int /*<<< orphan*/  aggregate; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct inode*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct jfs_log*,struct tblock*,struct lrd*,struct tlock*) ; 
 int /*<<< orphan*/  FUNC4 (struct jfs_log*,struct tblock*,struct lrd*,struct tlock*,struct commit*) ; 
 int /*<<< orphan*/  FUNC5 (struct jfs_log*,struct tblock*,struct lrd*,struct tlock*) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct tlock*) ; 
 struct tlock* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct jfs_log*,struct tblock*,struct lrd*,struct tlock*) ; 
#define  tlckDATA 132 
#define  tlckDTREE 131 
#define  tlckINODE 130 
 int /*<<< orphan*/  tlckLOG ; 
#define  tlckMAP 129 
 int tlckTYPE ; 
#define  tlckXTREE 128 
 int /*<<< orphan*/  FUNC9 (struct jfs_log*,struct tblock*,struct lrd*,struct tlock*) ; 

__attribute__((used)) static int FUNC10(struct jfs_log * log, struct tblock * tblk, struct commit * cd)
{
	int rc = 0;
	struct inode *ip;
	lid_t lid;
	struct tlock *tlck;
	struct lrd *lrd = &cd->lrd;

	/*
	 * write log record(s) for each tlock of transaction,
	 */
	for (lid = tblk->next; lid; lid = tlck->next) {
		tlck = FUNC7(lid);

		tlck->flag |= tlckLOG;

		/* initialize lrd common */
		ip = tlck->ip;
		lrd->aggregate = FUNC2(FUNC1(ip->i_sb)->aggregate);
		lrd->log.redopage.fileset = FUNC2(FUNC0(ip)->fileset);
		lrd->log.redopage.inode = FUNC2(ip->i_ino);

		/* write log record of page from the tlock */
		switch (tlck->type & tlckTYPE) {
		case tlckXTREE:
			FUNC9(log, tblk, lrd, tlck);
			break;

		case tlckDTREE:
			FUNC5(log, tblk, lrd, tlck);
			break;

		case tlckINODE:
			FUNC4(log, tblk, lrd, tlck, cd);
			break;

		case tlckMAP:
			FUNC8(log, tblk, lrd, tlck);
			break;

		case tlckDATA:
			FUNC3(log, tblk, lrd, tlck);
			break;

		default:
			FUNC6("UFO tlock:0x%p", tlck);
		}
	}

	return rc;
}