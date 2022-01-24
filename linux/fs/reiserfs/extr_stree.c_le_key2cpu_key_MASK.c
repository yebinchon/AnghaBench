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
struct reiserfs_key {int /*<<< orphan*/  k_objectid; int /*<<< orphan*/  k_dir_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  k_type; int /*<<< orphan*/  k_offset; void* k_objectid; void* k_dir_id; } ;
struct cpu_key {int version; TYPE_1__ on_disk_key; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct reiserfs_key const*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct reiserfs_key const*) ; 
 int FUNC3 (struct reiserfs_key const*) ; 

inline void FUNC4(struct cpu_key *to, const struct reiserfs_key *from)
{
	int version;
	to->on_disk_key.k_dir_id = FUNC0(from->k_dir_id);
	to->on_disk_key.k_objectid = FUNC0(from->k_objectid);

	/* find out version of the key */
	version = FUNC3(from);
	to->version = version;
	to->on_disk_key.k_offset = FUNC1(version, from);
	to->on_disk_key.k_type = FUNC2(version, from);
}