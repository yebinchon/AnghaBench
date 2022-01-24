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
struct nfs_page {int /*<<< orphan*/  wb_nio; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_CONTEXT_RESEND_WRITES ; 
 int /*<<< orphan*/  FUNC0 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_page*) ; 
 TYPE_1__* FUNC3 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct nfs_page *req)
{
	/* Bump the transmission count */
	req->wb_nio++;
	FUNC1(req);
	FUNC4(NFS_CONTEXT_RESEND_WRITES, &FUNC3(req)->flags);
	FUNC0(req);
	FUNC2(req);
}