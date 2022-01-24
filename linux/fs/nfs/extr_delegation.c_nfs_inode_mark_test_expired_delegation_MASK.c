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
struct nfs_server {int dummy; } ;
struct nfs_delegation {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  delegation; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_server*,struct nfs_delegation*) ; 
 struct nfs_delegation* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct nfs_server *server,
		struct inode *inode)
{
	struct nfs_delegation *delegation;

	FUNC3();
	delegation = FUNC2(FUNC0(inode)->delegation);
	if (delegation)
		FUNC1(server, delegation);
	FUNC4();

}