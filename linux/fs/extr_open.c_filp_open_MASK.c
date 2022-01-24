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
typedef  int /*<<< orphan*/  umode_t ;
struct filename {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 struct file* FUNC0 (struct filename*) ; 
 int /*<<< orphan*/  FUNC1 (struct filename*) ; 
 struct file* FUNC2 (struct filename*,int,int /*<<< orphan*/ ) ; 
 struct filename* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct filename*) ; 

struct file *FUNC5(const char *filename, int flags, umode_t mode)
{
	struct filename *name = FUNC3(filename);
	struct file *file = FUNC0(name);
	
	if (!FUNC1(name)) {
		file = FUNC2(name, flags, mode);
		FUNC4(name);
	}
	return file;
}