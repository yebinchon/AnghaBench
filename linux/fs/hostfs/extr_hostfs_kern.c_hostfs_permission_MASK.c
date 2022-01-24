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
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int ECHILD ; 
 int ENOMEM ; 
 int MAY_EXEC ; 
 int MAY_NOT_BLOCK ; 
 int MAY_READ ; 
 int MAY_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*,int,int,int) ; 
 int FUNC6 (struct inode*,int) ; 
 char* FUNC7 (struct inode*) ; 

__attribute__((used)) static int FUNC8(struct inode *ino, int desired)
{
	char *name;
	int r = 0, w = 0, x = 0, err;

	if (desired & MAY_NOT_BLOCK)
		return -ECHILD;

	if (desired & MAY_READ) r = 1;
	if (desired & MAY_WRITE) w = 1;
	if (desired & MAY_EXEC) x = 1;
	name = FUNC7(ino);
	if (name == NULL)
		return -ENOMEM;

	if (FUNC1(ino->i_mode) || FUNC0(ino->i_mode) ||
	    FUNC2(ino->i_mode) || FUNC3(ino->i_mode))
		err = 0;
	else
		err = FUNC5(name, r, w, x);
	FUNC4(name);
	if (!err)
		err = FUNC6(ino, desired);
	return err;
}