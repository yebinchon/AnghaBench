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

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static char *FUNC2(const char *path, char *pos, const char *name)
{
	int namelen;
	namelen = FUNC1(name);
	if (((pos - path) + namelen + 2) >= PATH_MAX)
		return NULL;
	FUNC0(pos, name, namelen);
	pos[namelen] = '/';
	pos[namelen + 1] = '\0';
	pos += namelen + 1;
	return pos;
}