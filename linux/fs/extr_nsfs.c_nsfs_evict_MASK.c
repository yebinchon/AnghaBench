#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ns_common {TYPE_1__* ops; } ;
struct inode {struct ns_common* i_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* put ) (struct ns_common*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct ns_common*) ; 

__attribute__((used)) static void FUNC2(struct inode *inode)
{
	struct ns_common *ns = inode->i_private;
	FUNC0(inode);
	ns->ops->put(ns);
}