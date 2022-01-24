#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flag; void* maxentry; void* nextindex; } ;
struct TYPE_5__ {TYPE_1__ header; } ;
typedef  TYPE_2__ xtpage_t ;
typedef  int /*<<< orphan*/  tid_t ;
struct metapage {int dummy; } ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_mode; } ;
struct TYPE_6__ {TYPE_2__ i_xtroot; int /*<<< orphan*/  bxflag; } ;

/* Variables and functions */
 int BT_LEAF ; 
 int BT_ROOT ; 
 int DXD_INDEX ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XTENTRYSTART ; 
 int /*<<< orphan*/  XTROOTINITSLOT ; 
 int /*<<< orphan*/  XTROOTINITSLOT_DIR ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int tlckNEW ; 
 int tlckXTREE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct inode*,struct metapage*,int) ; 

void FUNC4(tid_t tid, struct inode *ip)
{
	xtpage_t *p;

	/*
	 * acquire a transaction lock on the root
	 *
	 * action:
	 */
	FUNC3(tid, ip, (struct metapage *) &FUNC0(ip)->bxflag,
		      tlckXTREE | tlckNEW);
	p = &FUNC0(ip)->i_xtroot;

	p->header.flag = DXD_INDEX | BT_ROOT | BT_LEAF;
	p->header.nextindex = FUNC2(XTENTRYSTART);

	if (FUNC1(ip->i_mode))
		p->header.maxentry = FUNC2(XTROOTINITSLOT_DIR);
	else {
		p->header.maxentry = FUNC2(XTROOTINITSLOT);
		ip->i_size = 0;
	}


	return;
}