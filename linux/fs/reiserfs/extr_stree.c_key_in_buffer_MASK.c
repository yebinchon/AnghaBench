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
struct treepath {scalar_t__ path_length; } ;
struct super_block {int dummy; } ;
struct cpu_key {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  b_bdev; } ;

/* Variables and functions */
 scalar_t__ FIRST_PATH_ELEMENT_OFFSET ; 
 scalar_t__ MAX_HEIGHT ; 
 TYPE_1__* FUNC0 (struct treepath*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct cpu_key const*) ; 
 int /*<<< orphan*/  FUNC3 (struct treepath*,struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct treepath*,struct super_block*) ; 

__attribute__((used)) static inline int FUNC5(
				/* Path which should be checked. */
				struct treepath *chk_path,
				/* Key which should be checked. */
				const struct cpu_key *key,
				struct super_block *sb
    )
{

	FUNC1(!key || chk_path->path_length < FIRST_PATH_ELEMENT_OFFSET
	       || chk_path->path_length > MAX_HEIGHT,
	       "PAP-5050: pointer to the key(%p) is NULL or invalid path length(%d)",
	       key, chk_path->path_length);
	FUNC1(!FUNC0(chk_path)->b_bdev,
	       "PAP-5060: device must not be NODEV");

	if (FUNC2(FUNC3(chk_path, sb), key) == 1)
		/* left delimiting key is bigger, that the key we look for */
		return 0;
	/*  if ( comp_keys(key, get_rkey(chk_path, sb)) != -1 ) */
	if (FUNC2(FUNC4(chk_path, sb), key) != 1)
		/* key must be less than right delimitiing key */
		return 0;
	return 1;
}