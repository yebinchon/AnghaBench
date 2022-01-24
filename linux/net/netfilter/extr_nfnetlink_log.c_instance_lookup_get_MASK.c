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
typedef  int /*<<< orphan*/  u_int16_t ;
struct nfulnl_instance {int /*<<< orphan*/  use; } ;
struct nfnl_log_net {int dummy; } ;

/* Variables and functions */
 struct nfulnl_instance* FUNC0 (struct nfnl_log_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfulnl_instance *
FUNC4(struct nfnl_log_net *log, u_int16_t group_num)
{
	struct nfulnl_instance *inst;

	FUNC1();
	inst = FUNC0(log, group_num);
	if (inst && !FUNC3(&inst->use))
		inst = NULL;
	FUNC2();

	return inst;
}