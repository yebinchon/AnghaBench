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
struct filename {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 struct file* FUNC0 (struct filename*) ; 
 int /*<<< orphan*/  FUNC1 (struct filename*) ; 
 struct file* FUNC2 (int /*<<< orphan*/ ,struct filename*,int /*<<< orphan*/ ) ; 
 struct filename* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct filename*) ; 

struct file *FUNC5(const char *name)
{
	struct filename *filename = FUNC3(name);
	struct file *f = FUNC0(filename);

	if (!FUNC1(filename)) {
		f = FUNC2(AT_FDCWD, filename, 0);
		FUNC4(filename);
	}
	return f;
}