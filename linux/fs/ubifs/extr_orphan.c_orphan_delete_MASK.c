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
struct ubifs_orphan {int del; int /*<<< orphan*/  inum; struct ubifs_orphan* dnext; scalar_t__ cmt; } ;
struct ubifs_info {struct ubifs_orphan* orph_dnext; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ubifs_info*,struct ubifs_orphan*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ubifs_info *c, struct ubifs_orphan *orph)
{
	if (orph->del) {
		FUNC1("deleted twice ino %lu", orph->inum);
		return;
	}

	if (orph->cmt) {
		orph->del = 1;
		orph->dnext = c->orph_dnext;
		c->orph_dnext = orph;
		FUNC1("delete later ino %lu", orph->inum);
		return;
	}

	FUNC0(c, orph);
}