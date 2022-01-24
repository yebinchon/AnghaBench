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
struct discard_cmd_control {int /*<<< orphan*/ * pend_list; } ;
struct discard_cmd {int /*<<< orphan*/  len; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct discard_cmd_control *dcc,
						struct discard_cmd *dc)
{
	FUNC0(&dc->list, &dcc->pend_list[FUNC1(dc->len)]);
}