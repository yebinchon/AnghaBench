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
struct super_block {int cleancache_poolid; } ;

/* Variables and functions */
#define  CLEANCACHE_NO_BACKEND 129 
#define  CLEANCACHE_NO_BACKEND_SHARED 128 
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 

__attribute__((used)) static void FUNC2(struct super_block *sb, void *unused)
{
	switch (sb->cleancache_poolid) {
	case CLEANCACHE_NO_BACKEND:
		FUNC0(sb);
		break;
	case CLEANCACHE_NO_BACKEND_SHARED:
		FUNC1(sb);
		break;
	}
}