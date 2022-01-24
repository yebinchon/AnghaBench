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
struct disk_child {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct disk_child*) ; 
 int /*<<< orphan*/  FUNC1 (struct disk_child*) ; 
 int FUNC2 (char*,size_t,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(char *buf, size_t size, struct disk_child *dc)
{
	return FUNC2(buf, size, "[dc_number=%d, dc_size=%u]",
			 FUNC0(dc), FUNC1(dc));
}