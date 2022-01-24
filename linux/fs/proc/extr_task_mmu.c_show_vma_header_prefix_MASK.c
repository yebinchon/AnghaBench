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
typedef  int vm_flags_t ;
struct seq_file {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 unsigned long long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC1 (int /*<<< orphan*/ ) ; 
 int VM_EXEC ; 
 int VM_MAYSHARE ; 
 int VM_READ ; 
 int VM_WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,int) ; 

__attribute__((used)) static void FUNC6(struct seq_file *m,
				   unsigned long start, unsigned long end,
				   vm_flags_t flags, unsigned long long pgoff,
				   dev_t dev, unsigned long ino)
{
	FUNC5(m, 25 + sizeof(void *) * 6 - 1);
	FUNC3(m, NULL, start, 8);
	FUNC3(m, "-", end, 8);
	FUNC4(m, ' ');
	FUNC4(m, flags & VM_READ ? 'r' : '-');
	FUNC4(m, flags & VM_WRITE ? 'w' : '-');
	FUNC4(m, flags & VM_EXEC ? 'x' : '-');
	FUNC4(m, flags & VM_MAYSHARE ? 's' : 'p');
	FUNC3(m, " ", pgoff, 8);
	FUNC3(m, " ", FUNC0(dev), 2);
	FUNC3(m, ":", FUNC1(dev), 2);
	FUNC2(m, " ", ino);
	FUNC4(m, ' ');
}