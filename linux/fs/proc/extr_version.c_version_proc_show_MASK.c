#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  version; int /*<<< orphan*/  release; int /*<<< orphan*/  sysname; } ;

/* Variables and functions */
 int /*<<< orphan*/  linux_proc_banner ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 () ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *v)
{
	FUNC0(m, linux_proc_banner,
		FUNC1()->sysname,
		FUNC1()->release,
		FUNC1()->version);
	return 0;
}