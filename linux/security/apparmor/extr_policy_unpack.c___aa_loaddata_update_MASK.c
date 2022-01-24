#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct aa_loaddata {long revision; int /*<<< orphan*/ * dents; TYPE_1__* ns; } ;
struct TYPE_5__ {void* i_mtime; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t AAFS_LOADDATA_DIR ; 
 size_t AAFS_LOADDATA_REVISION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct aa_loaddata *data, long revision)
{
	FUNC0(!data);
	FUNC0(!data->ns);
	FUNC0(!data->dents[AAFS_LOADDATA_REVISION]);
	FUNC0(!FUNC3(&data->ns->lock));
	FUNC0(data->revision > revision);

	data->revision = revision;
	FUNC2(data->dents[AAFS_LOADDATA_DIR])->i_mtime =
		FUNC1(FUNC2(data->dents[AAFS_LOADDATA_DIR]));
	FUNC2(data->dents[AAFS_LOADDATA_REVISION])->i_mtime =
		FUNC1(FUNC2(data->dents[AAFS_LOADDATA_REVISION]));
}