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
typedef  scalar_t__ u16 ;
struct batadv_frag_table_entry {scalar_t__ seqno; scalar_t__ size; int /*<<< orphan*/  fragment_list; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct batadv_frag_table_entry *chain,
				   u16 seqno)
{
	FUNC2(&chain->lock);

	if (chain->seqno == seqno)
		return false;

	if (!FUNC1(&chain->fragment_list))
		FUNC0(&chain->fragment_list, true);

	chain->size = 0;
	chain->seqno = seqno;

	return true;
}