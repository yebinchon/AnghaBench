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
typedef  int /*<<< orphan*/  u32 ;
struct smack_known {void* smk_known; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct smack_known* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, void **ctx, u32 *ctxlen)
{
	struct smack_known *skp = FUNC0(inode);

	*ctx = skp->smk_known;
	*ctxlen = FUNC1(skp->smk_known);
	return 0;
}