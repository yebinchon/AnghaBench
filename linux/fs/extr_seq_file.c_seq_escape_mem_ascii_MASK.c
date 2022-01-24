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
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int) ; 
 size_t FUNC1 (struct seq_file*,char**) ; 
 int FUNC2 (char const*,size_t,char*,size_t) ; 

void FUNC3(struct seq_file *m, const char *src, size_t isz)
{
	char *buf;
	size_t size = FUNC1(m, &buf);
	int ret;

	ret = FUNC2(src, isz, buf, size);
	FUNC0(m, ret < size ? ret : -1);
}