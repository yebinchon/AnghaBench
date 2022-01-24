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
struct discard_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct discard_info*,struct discard_info*,unsigned int) ; 

__attribute__((used)) static inline bool FUNC1(struct discard_info *cur,
			struct discard_info *front, unsigned int max_len)
{
	return FUNC0(cur, front, max_len);
}