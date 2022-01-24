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
struct minstrel_ht_sta {int /*<<< orphan*/  avg_ampdu_len; } ;

/* Variables and functions */
 unsigned int AVG_AMPDU_SIZE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC1(struct minstrel_ht_sta *mi)
{
	if (!mi->avg_ampdu_len)
		return AVG_AMPDU_SIZE;

	return FUNC0(mi->avg_ampdu_len);
}