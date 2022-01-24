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
struct ubifs_ch {int /*<<< orphan*/  len; int /*<<< orphan*/  sqnum; int /*<<< orphan*/  group_type; int /*<<< orphan*/  node_type; int /*<<< orphan*/  crc; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long long,...) ; 

__attribute__((used)) static void FUNC5(const struct ubifs_ch *ch)
{
	FUNC4("\tmagic          %#x\n", FUNC2(ch->magic));
	FUNC4("\tcrc            %#x\n", FUNC2(ch->crc));
	FUNC4("\tnode_type      %d (%s)\n", ch->node_type,
	       FUNC1(ch->node_type));
	FUNC4("\tgroup_type     %d (%s)\n", ch->group_type,
	       FUNC0(ch->group_type));
	FUNC4("\tsqnum          %llu\n",
	       (unsigned long long)FUNC3(ch->sqnum));
	FUNC4("\tlen            %u\n", FUNC2(ch->len));
}