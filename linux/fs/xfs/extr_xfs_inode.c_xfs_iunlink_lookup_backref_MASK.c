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
typedef  int /*<<< orphan*/  xfs_agino_t ;
struct xfs_perag {int /*<<< orphan*/  pagi_unlinked_hash; } ;
struct xfs_iunlink {int /*<<< orphan*/  iu_agino; } ;

/* Variables and functions */
 int /*<<< orphan*/  NULLAGINO ; 
 struct xfs_iunlink* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfs_iunlink_hash_params ; 

__attribute__((used)) static xfs_agino_t
FUNC1(
	struct xfs_perag	*pag,
	xfs_agino_t		agino)
{
	struct xfs_iunlink	*iu;

	iu = FUNC0(&pag->pagi_unlinked_hash, &agino,
			xfs_iunlink_hash_params);
	return iu ? iu->iu_agino : NULLAGINO;
}