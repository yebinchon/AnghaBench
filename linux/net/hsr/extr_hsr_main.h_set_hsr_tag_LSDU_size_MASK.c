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
typedef  int u16 ;
struct hsr_tag {int /*<<< orphan*/  path_and_LSDU_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct hsr_tag *ht, u16 LSDU_size)
{
	ht->path_and_LSDU_size = FUNC0((FUNC1(ht->path_and_LSDU_size) &
				       0xF000) | (LSDU_size & 0x0FFF));
}