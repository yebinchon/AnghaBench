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
struct item_head {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 struct item_head* FUNC0 (struct buffer_head const*) ; 

__attribute__((used)) static inline struct item_head *FUNC1(const struct buffer_head *bh,
					  int item_num)
{
	struct item_head *ih = FUNC0(bh);

	return &ih[item_num];
}