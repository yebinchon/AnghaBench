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
struct timer_list {int dummy; } ;
struct nci_dev {int /*<<< orphan*/  cmd_work; int /*<<< orphan*/  cmd_wq; int /*<<< orphan*/  cmd_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cmd_timer ; 
 struct nci_dev* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct nci_dev* ndev ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct nci_dev *ndev = FUNC1(ndev, t, cmd_timer);

	FUNC0(&ndev->cmd_cnt, 1);
	FUNC2(ndev->cmd_wq, &ndev->cmd_work);
}