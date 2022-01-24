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
struct metapage {struct jfs_log* nohomeok; struct jfs_log* log; } ;
struct jfs_log {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jfs_log*) ; 
 int /*<<< orphan*/  FUNC1 (struct metapage*) ; 

__attribute__((used)) static void FUNC2(struct metapage * mp)
{
	struct jfs_log *log = mp->log;

	FUNC0(mp->nohomeok);
	FUNC0(log);
	FUNC1(mp);
}