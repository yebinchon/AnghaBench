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
typedef  int /*<<< orphan*/  u8 ;
struct cfmuxl {int /*<<< orphan*/  transmit_lock; int /*<<< orphan*/  frml_list; } ;
struct cflayer {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct cflayer *layr, struct cflayer *dn, u8 phyid)
{
	struct cfmuxl *muxl = (struct cfmuxl *) layr;

	FUNC1(&muxl->transmit_lock);
	FUNC0(&dn->node, &muxl->frml_list);
	FUNC2(&muxl->transmit_lock);
	return 0;
}