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
struct TYPE_2__ {int /*<<< orphan*/  sb_meta_uuid; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_buf {int dummy; } ;
struct xfs_agfl {int /*<<< orphan*/  agfl_uuid; void* agfl_seqno; void* agfl_magicnum; } ;
struct aghdr_init_data {int /*<<< orphan*/  agno; } ;
typedef  void* __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NULLAGBLOCK ; 
 int /*<<< orphan*/  XFS_AGFL_MAGIC ; 
 struct xfs_agfl* FUNC0 (struct xfs_buf*) ; 
 void** FUNC1 (struct xfs_mount*,struct xfs_buf*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct xfs_mount*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(
	struct xfs_mount	*mp,
	struct xfs_buf		*bp,
	struct aghdr_init_data	*id)
{
	struct xfs_agfl		*agfl = FUNC0(bp);
	__be32			*agfl_bno;
	int			bucket;

	if (FUNC5(&mp->m_sb)) {
		agfl->agfl_magicnum = FUNC2(XFS_AGFL_MAGIC);
		agfl->agfl_seqno = FUNC2(id->agno);
		FUNC3(&agfl->agfl_uuid, &mp->m_sb.sb_meta_uuid);
	}

	agfl_bno = FUNC1(mp, bp);
	for (bucket = 0; bucket < FUNC4(mp); bucket++)
		agfl_bno[bucket] = FUNC2(NULLAGBLOCK);
}