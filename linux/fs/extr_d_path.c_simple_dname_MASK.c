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
struct TYPE_2__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENAMETOOLONG ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char**,int*,char*,int) ; 

char *FUNC2(struct dentry *dentry, char *buffer, int buflen)
{
	char *end = buffer + buflen;
	/* these dentries are never renamed, so d_lock is not needed */
	if (FUNC1(&end, &buflen, " (deleted)", 11) ||
	    FUNC1(&end, &buflen, dentry->d_name.name, dentry->d_name.len) ||
	    FUNC1(&end, &buflen, "/", 1))  
		end = FUNC0(-ENAMETOOLONG);
	return end;
}