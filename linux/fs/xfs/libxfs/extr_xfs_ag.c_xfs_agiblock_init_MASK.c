#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sb_meta_uuid; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_buf {int dummy; } ;
struct xfs_agi {void** agi_unlinked; void* agi_free_level; void* agi_free_root; int /*<<< orphan*/  agi_uuid; void* agi_dirino; void* agi_newino; scalar_t__ agi_freecount; void* agi_level; void* agi_root; scalar_t__ agi_count; void* agi_length; void* agi_seqno; void* agi_versionnum; void* agi_magicnum; } ;
struct aghdr_init_data {int agno; int agsize; } ;

/* Variables and functions */
 int NULLAGINO ; 
 int XFS_AGI_MAGIC ; 
 int XFS_AGI_UNLINKED_BUCKETS ; 
 int XFS_AGI_VERSION ; 
 struct xfs_agi* FUNC0 (struct xfs_buf*) ; 
 int FUNC1 (struct xfs_mount*) ; 
 int FUNC2 (struct xfs_mount*) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC7(
	struct xfs_mount	*mp,
	struct xfs_buf		*bp,
	struct aghdr_init_data	*id)
{
	struct xfs_agi		*agi = FUNC0(bp);
	int			bucket;

	agi->agi_magicnum = FUNC3(XFS_AGI_MAGIC);
	agi->agi_versionnum = FUNC3(XFS_AGI_VERSION);
	agi->agi_seqno = FUNC3(id->agno);
	agi->agi_length = FUNC3(id->agsize);
	agi->agi_count = 0;
	agi->agi_root = FUNC3(FUNC2(mp));
	agi->agi_level = FUNC3(1);
	agi->agi_freecount = 0;
	agi->agi_newino = FUNC3(NULLAGINO);
	agi->agi_dirino = FUNC3(NULLAGINO);
	if (FUNC5(&mp->m_sb))
		FUNC4(&agi->agi_uuid, &mp->m_sb.sb_meta_uuid);
	if (FUNC6(&mp->m_sb)) {
		agi->agi_free_root = FUNC3(FUNC1(mp));
		agi->agi_free_level = FUNC3(1);
	}
	for (bucket = 0; bucket < XFS_AGI_UNLINKED_BUCKETS; bucket++)
		agi->agi_unlinked[bucket] = FUNC3(NULLAGINO);
}