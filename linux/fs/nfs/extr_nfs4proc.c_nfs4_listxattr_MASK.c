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
struct dentry {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct dentry*,char*,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 

__attribute__((used)) static ssize_t FUNC3(struct dentry *dentry, char *list, size_t size)
{
	ssize_t error, error2;

	error = FUNC1(dentry, list, size);
	if (error < 0)
		return error;
	if (list) {
		list += error;
		size -= error;
	}

	error2 = FUNC2(FUNC0(dentry), list, size);
	if (error2 < 0)
		return error2;
	return error + error2;
}