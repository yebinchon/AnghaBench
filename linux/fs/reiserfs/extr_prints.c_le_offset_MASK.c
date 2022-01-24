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
struct reiserfs_key {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ TYPE_DIRENTRY ; 
 scalar_t__ FUNC2 (int,struct reiserfs_key*) ; 
 scalar_t__ FUNC3 (int,struct reiserfs_key*) ; 
 int FUNC4 (struct reiserfs_key*) ; 
 char* off_buf ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,unsigned long long,...) ; 

__attribute__((used)) static char *FUNC6(struct reiserfs_key *key)
{
	int version;

	version = FUNC4(key);
	if (FUNC3(version, key) == TYPE_DIRENTRY)
		FUNC5(off_buf, "%llu(%llu)",
			(unsigned long long)
			FUNC1(FUNC2(version, key)),
			(unsigned long long)
			FUNC0(FUNC2(version, key)));
	else
		FUNC5(off_buf, "0x%Lx",
			(unsigned long long)FUNC2(version, key));
	return off_buf;
}