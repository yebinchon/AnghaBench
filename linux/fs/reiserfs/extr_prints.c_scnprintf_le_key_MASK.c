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
struct reiserfs_key {int /*<<< orphan*/  k_objectid; int /*<<< orphan*/  k_dir_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct reiserfs_key*) ; 
 int /*<<< orphan*/  FUNC2 (struct reiserfs_key*) ; 
 int FUNC3 (char*,size_t,char*,...) ; 

__attribute__((used)) static int FUNC4(char *buf, size_t size, struct reiserfs_key *key)
{
	if (key)
		return FUNC3(buf, size, "[%d %d %s %s]",
				 FUNC0(key->k_dir_id),
				 FUNC0(key->k_objectid), FUNC1(key),
				 FUNC2(key));
	else
		return FUNC3(buf, size, "[NULL]");
}