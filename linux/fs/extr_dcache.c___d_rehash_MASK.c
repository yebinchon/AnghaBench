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
struct hlist_bl_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hash; } ;
struct dentry {int /*<<< orphan*/  d_hash; TYPE_1__ d_name; } ;

/* Variables and functions */
 struct hlist_bl_head* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct hlist_bl_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct hlist_bl_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct hlist_bl_head*) ; 

__attribute__((used)) static void FUNC4(struct dentry *entry)
{
	struct hlist_bl_head *b = FUNC0(entry->d_name.hash);

	FUNC2(b);
	FUNC1(&entry->d_hash, b);
	FUNC3(b);
}