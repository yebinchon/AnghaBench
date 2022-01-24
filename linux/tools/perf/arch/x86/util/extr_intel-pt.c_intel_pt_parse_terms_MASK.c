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
typedef  scalar_t__ u64 ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct list_head*,char const*,scalar_t__*) ; 

__attribute__((used)) static int FUNC1(struct list_head *formats, const char *str,
				u64 *config)
{
	*config = 0;
	return FUNC0(formats, str, config);
}