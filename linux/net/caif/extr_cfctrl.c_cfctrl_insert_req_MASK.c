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
struct cfctrl_request_info {int /*<<< orphan*/  list; int /*<<< orphan*/  sequence_no; } ;
struct cfctrl {int /*<<< orphan*/  info_list_lock; int /*<<< orphan*/  list; int /*<<< orphan*/  req_seq_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct cfctrl *ctrl,
			      struct cfctrl_request_info *req)
{
	FUNC3(&ctrl->info_list_lock);
	FUNC0(&ctrl->req_seq_no);
	req->sequence_no = FUNC1(&ctrl->req_seq_no);
	FUNC2(&req->list, &ctrl->list);
	FUNC4(&ctrl->info_list_lock);
}