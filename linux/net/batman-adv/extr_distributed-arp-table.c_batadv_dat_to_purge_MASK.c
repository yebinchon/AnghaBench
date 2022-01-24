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
struct batadv_dat_entry {int /*<<< orphan*/  last_update; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DAT_ENTRY_TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct batadv_dat_entry *dat_entry)
{
	return FUNC0(dat_entry->last_update,
				    BATADV_DAT_ENTRY_TIMEOUT);
}