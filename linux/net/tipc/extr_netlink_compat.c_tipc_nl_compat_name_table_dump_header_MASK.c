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
typedef  int u32 ;
struct tipc_nl_compat_msg {int /*<<< orphan*/  rep; int /*<<< orphan*/  req; } ;
struct tipc_name_table_query {int /*<<< orphan*/  depth; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const* const) ; 

__attribute__((used)) static int FUNC4(struct tipc_nl_compat_msg *msg)
{
	int i;
	u32 depth;
	struct tipc_name_table_query *ntq;
	static const char * const header[] = {
		"Type       ",
		"Lower      Upper      ",
		"Port Identity              ",
		"Publication Scope"
	};

	ntq = (struct tipc_name_table_query *)FUNC0(msg->req);
	if (FUNC1(msg->req) < sizeof(struct tipc_name_table_query))
		return -EINVAL;

	depth = FUNC2(ntq->depth);

	if (depth > 4)
		depth = 4;
	for (i = 0; i < depth; i++)
		FUNC3(msg->rep, header[i]);
	FUNC3(msg->rep, "\n");

	return 0;
}