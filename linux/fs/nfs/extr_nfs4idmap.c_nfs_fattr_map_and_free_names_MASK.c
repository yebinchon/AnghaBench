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
struct nfs_server {int dummy; } ;
struct nfs_fattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_fattr*) ; 
 scalar_t__ FUNC2 (struct nfs_server*,struct nfs_fattr*) ; 
 scalar_t__ FUNC3 (struct nfs_server*,struct nfs_fattr*) ; 

void FUNC4(struct nfs_server *server, struct nfs_fattr *fattr)
{
	if (FUNC3(server, fattr))
		FUNC1(fattr);
	if (FUNC2(server, fattr))
		FUNC0(fattr);
}