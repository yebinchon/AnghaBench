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
struct ceph_osd_request {int r_osd; int /*<<< orphan*/  r_private_item; int /*<<< orphan*/  r_mc_node; int /*<<< orphan*/  r_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ceph_osd_request *req)
{
	FUNC1(!FUNC0(&req->r_node));
	FUNC1(!FUNC0(&req->r_mc_node));
	FUNC1(!FUNC2(&req->r_private_item));
	FUNC1(req->r_osd);
}