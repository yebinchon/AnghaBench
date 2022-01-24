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
struct nfs_page {int /*<<< orphan*/  wb_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct nfs_page *req, int error)
{
	FUNC4(FUNC5(req->wb_page));
	FUNC2(req->wb_page, error);
	FUNC1(req);
	FUNC0(req);
	FUNC3(req);
}