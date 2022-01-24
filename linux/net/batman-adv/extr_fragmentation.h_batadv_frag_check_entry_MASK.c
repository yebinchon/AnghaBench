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
struct batadv_frag_table_entry {int /*<<< orphan*/  timestamp; int /*<<< orphan*/  fragment_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_FRAG_TIMEOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool
FUNC2(struct batadv_frag_table_entry *frags_entry)
{
	if (!FUNC1(&frags_entry->fragment_list) &&
	    FUNC0(frags_entry->timestamp, BATADV_FRAG_TIMEOUT))
		return true;
	return false;
}