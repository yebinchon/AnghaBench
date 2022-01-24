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
struct tep_handle {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long long*,int) ; 
 unsigned long long FUNC1 (struct tep_handle*,unsigned long long*,int) ; 

__attribute__((used)) static unsigned long long FUNC2(struct tep_handle *pevent)
{
	unsigned long long data;

	if (FUNC0(&data, 8) < 0)
		return 0;
	return FUNC1(pevent, &data, 8);
}